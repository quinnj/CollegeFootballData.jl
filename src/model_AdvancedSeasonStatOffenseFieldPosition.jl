# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


mutable struct AdvancedSeasonStatOffenseFieldPosition <: SwaggerModel
    averageStart::Any # spec type: Union{ Nothing, Float32 } # spec name: averageStart
    averagePredictedPoints::Any # spec type: Union{ Nothing, Float32 } # spec name: averagePredictedPoints

    function AdvancedSeasonStatOffenseFieldPosition(;averageStart=nothing, averagePredictedPoints=nothing)
        o = new()
        validate_property(AdvancedSeasonStatOffenseFieldPosition, Symbol("averageStart"), averageStart)
        setfield!(o, Symbol("averageStart"), averageStart)
        validate_property(AdvancedSeasonStatOffenseFieldPosition, Symbol("averagePredictedPoints"), averagePredictedPoints)
        setfield!(o, Symbol("averagePredictedPoints"), averagePredictedPoints)
        o
    end
end # type AdvancedSeasonStatOffenseFieldPosition

const _property_map_AdvancedSeasonStatOffenseFieldPosition = Dict{Symbol,Symbol}(Symbol("averageStart")=>Symbol("averageStart"), Symbol("averagePredictedPoints")=>Symbol("averagePredictedPoints"))
const _property_types_AdvancedSeasonStatOffenseFieldPosition = Dict{Symbol,String}(Symbol("averageStart")=>"Float32", Symbol("averagePredictedPoints")=>"Float32")
Base.propertynames(::Type{ AdvancedSeasonStatOffenseFieldPosition }) = collect(keys(_property_map_AdvancedSeasonStatOffenseFieldPosition))
Swagger.property_type(::Type{ AdvancedSeasonStatOffenseFieldPosition }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_AdvancedSeasonStatOffenseFieldPosition[name]))}
Swagger.field_name(::Type{ AdvancedSeasonStatOffenseFieldPosition }, property_name::Symbol) =  _property_map_AdvancedSeasonStatOffenseFieldPosition[property_name]

function check_required(o::AdvancedSeasonStatOffenseFieldPosition)
    true
end

function validate_property(::Type{ AdvancedSeasonStatOffenseFieldPosition }, name::Symbol, val)
end