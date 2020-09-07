# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


mutable struct VenueLocation <: SwaggerModel
    x::Any # spec type: Union{ Nothing, Float32 } # spec name: x
    y::Any # spec type: Union{ Nothing, Float32 } # spec name: y

    function VenueLocation(;x=nothing, y=nothing)
        o = new()
        validate_property(VenueLocation, Symbol("x"), x)
        setfield!(o, Symbol("x"), x)
        validate_property(VenueLocation, Symbol("y"), y)
        setfield!(o, Symbol("y"), y)
        o
    end
end # type VenueLocation

const _property_map_VenueLocation = Dict{Symbol,Symbol}(Symbol("x")=>Symbol("x"), Symbol("y")=>Symbol("y"))
const _property_types_VenueLocation = Dict{Symbol,String}(Symbol("x")=>"Float32", Symbol("y")=>"Float32")
Base.propertynames(::Type{ VenueLocation }) = collect(keys(_property_map_VenueLocation))
Swagger.property_type(::Type{ VenueLocation }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_VenueLocation[name]))}
Swagger.field_name(::Type{ VenueLocation }, property_name::Symbol) =  _property_map_VenueLocation[property_name]

function check_required(o::VenueLocation)
    true
end

function validate_property(::Type{ VenueLocation }, name::Symbol, val)
end