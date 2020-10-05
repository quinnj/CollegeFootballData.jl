function juliatype(ft)
    if haskey(ft, Symbol("\$ref"))
        return basename(ft[Symbol("\$ref")])
    end
    T = ft.type
    if T == "integer"
        return "Int"
    elseif T == "string"
        return "String"
    elseif T == "boolean"
        return "Bool"
    elseif T == "number"
        return "Float64"
    elseif T == "array"
        return "Vector{$(juliatype(ft.items))}"
    elseif T == "object"
        names = []
        types = []
        for (k, v) in ft.properties
            push!(names, ":$k")
            push!(types, juliatype(v))
        end
        return "NamedTuple{($(join(names, ", ")),), Tuple{$(join(types, ", "))}}"
    else
        error("unsupported model definition type: $(T)")
    end
end

# println(io, """
# mutable struct Parameter
#     name::String
#     description::String
#     in::String
#     required::Bool
#     type::Type
#     minimum::Union{Nothing, Int}
#     maximum::Union{Nothing, Int}

#     Paramter() = new()
# end

# StructTypes.StructType(::Type{Parameter}) = StructTypes.Mutable()
# """)

function generate(file=joinpath(@__DIR__, "../../api-docs.json"))
    x = JSON3.read(read(file))

    open(joinpath(@__DIR__, "../api/API.jl"), "w") do io
        #TODO: write x.info as module description
        println(io, "module API\n")
        println(io, "using StructTypes, JSON3, HTTP\n")
        println(io, """
function apicall(method, path, ::Type{RT}; verbose::Int=0, kw...) where {RT}
    query = Dict{Symbol, Any}()
    for (k, v) in pairs(kw)
        if v !== nothing
            query[k] = v
        end
    end
    if isempty(query)
        query = nothing
    end
    obj = JSON3.read(HTTP.request(uppercase(method), string(HOST, path), query=query, verbose=verbose).body)
    vals = RT[]
    for val in obj
        x = RT()
        for (k, v) in obj
            setfield!(x, k, v)
        end
        push!(vals, x)
    end
    return vals
end
""")
        println(io, "const HOST = \"$(joinpath("https://", x.host))\"\n")
        println(io, "# MODEL DEFINITIONS")
        for (T, def) in x.definitions
            if def.type == "object"
                println(io, "mutable struct $T")
                for (f, ft) in def.properties
                    # FT = f == :elevation ? "Union{String, Nothing}" : juliatype(ft)
                    println(io, "    $f::Any")
                end
                println(io, "\n    $T() = new()")
                println(io, "end # mutable struct $T\n")
                println(io, "StructTypes.StructType(::Type{$T}) = StructTypes.Mutable()\n")
            else
                error("unsupported model definition type: $(def.type)")
            end
        end
        println(io, "# ENDPOINT DEFINITIONS")
        for (path, def) in x.paths
            for (method, def2) in def
                func = def2.operationId
                RT = juliatype(def2.responses[Symbol("200")].schema)
                if haskey(def2, :parameters)
                    kw = ["$(x.name)::$(x.required ? juliatype(x) : "Union{Nothing, $(juliatype(x))}")=$(x.required ? "error(\"$(x.name) keyword argument is required\")" : haskey(x, :default) ? "\"$(x.default)\"" : "nothing")" for x in def2.parameters]
                    push!(kw, "verbose::Int=0")
                    kw2 = ["$(x.name)=$(x.name)" for x in def2.parameters]
                    push!(kw2, "verbose=verbose")
                    println(io, "$func(; $(join(kw, ", "))) = apicall(\"$method\", \"$path\", $RT; $(join(kw2, ", ")))")
                else
                    println(io, "$func() = apicall(\"$method\", \"$path\", $RT)")
                end
            end
        end
        println(io, "\nend # module #API")
    end
end