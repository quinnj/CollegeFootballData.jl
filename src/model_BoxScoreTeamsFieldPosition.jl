# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


mutable struct BoxScoreTeamsFieldPosition <: SwaggerModel
    team::Any # spec type: Union{ Nothing, String } # spec name: team
    averageStart::Any # spec type: Union{ Nothing, Float32 } # spec name: averageStart
    averageStartingPredictedPoints::Any # spec type: Union{ Nothing, Float32 } # spec name: averageStartingPredictedPoints

    function BoxScoreTeamsFieldPosition(;team=nothing, averageStart=nothing, averageStartingPredictedPoints=nothing)
        o = new()
        validate_property(BoxScoreTeamsFieldPosition, Symbol("team"), team)
        setfield!(o, Symbol("team"), team)
        validate_property(BoxScoreTeamsFieldPosition, Symbol("averageStart"), averageStart)
        setfield!(o, Symbol("averageStart"), averageStart)
        validate_property(BoxScoreTeamsFieldPosition, Symbol("averageStartingPredictedPoints"), averageStartingPredictedPoints)
        setfield!(o, Symbol("averageStartingPredictedPoints"), averageStartingPredictedPoints)
        o
    end
end # type BoxScoreTeamsFieldPosition

const _property_map_BoxScoreTeamsFieldPosition = Dict{Symbol,Symbol}(Symbol("team")=>Symbol("team"), Symbol("averageStart")=>Symbol("averageStart"), Symbol("averageStartingPredictedPoints")=>Symbol("averageStartingPredictedPoints"))
const _property_types_BoxScoreTeamsFieldPosition = Dict{Symbol,String}(Symbol("team")=>"String", Symbol("averageStart")=>"Float32", Symbol("averageStartingPredictedPoints")=>"Float32")
Base.propertynames(::Type{ BoxScoreTeamsFieldPosition }) = collect(keys(_property_map_BoxScoreTeamsFieldPosition))
Swagger.property_type(::Type{ BoxScoreTeamsFieldPosition }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_BoxScoreTeamsFieldPosition[name]))}
Swagger.field_name(::Type{ BoxScoreTeamsFieldPosition }, property_name::Symbol) =  _property_map_BoxScoreTeamsFieldPosition[property_name]

function check_required(o::BoxScoreTeamsFieldPosition)
    true
end

function validate_property(::Type{ BoxScoreTeamsFieldPosition }, name::Symbol, val)
end