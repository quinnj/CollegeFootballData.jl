# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


mutable struct BoxScoreTeamsScoringOpportunities <: SwaggerModel
    team::Any # spec type: Union{ Nothing, String } # spec name: team
    opportunities::Any # spec type: Union{ Nothing, Int32 } # spec name: opportunities
    points::Any # spec type: Union{ Nothing, Int32 } # spec name: points
    pointsPerOpportunity::Any # spec type: Union{ Nothing, Float32 } # spec name: pointsPerOpportunity

    function BoxScoreTeamsScoringOpportunities(;team=nothing, opportunities=nothing, points=nothing, pointsPerOpportunity=nothing)
        o = new()
        validate_property(BoxScoreTeamsScoringOpportunities, Symbol("team"), team)
        setfield!(o, Symbol("team"), team)
        validate_property(BoxScoreTeamsScoringOpportunities, Symbol("opportunities"), opportunities)
        setfield!(o, Symbol("opportunities"), opportunities)
        validate_property(BoxScoreTeamsScoringOpportunities, Symbol("points"), points)
        setfield!(o, Symbol("points"), points)
        validate_property(BoxScoreTeamsScoringOpportunities, Symbol("pointsPerOpportunity"), pointsPerOpportunity)
        setfield!(o, Symbol("pointsPerOpportunity"), pointsPerOpportunity)
        o
    end
end # type BoxScoreTeamsScoringOpportunities

const _property_map_BoxScoreTeamsScoringOpportunities = Dict{Symbol,Symbol}(Symbol("team")=>Symbol("team"), Symbol("opportunities")=>Symbol("opportunities"), Symbol("points")=>Symbol("points"), Symbol("pointsPerOpportunity")=>Symbol("pointsPerOpportunity"))
const _property_types_BoxScoreTeamsScoringOpportunities = Dict{Symbol,String}(Symbol("team")=>"String", Symbol("opportunities")=>"Int32", Symbol("points")=>"Int32", Symbol("pointsPerOpportunity")=>"Float32")
Base.propertynames(::Type{ BoxScoreTeamsScoringOpportunities }) = collect(keys(_property_map_BoxScoreTeamsScoringOpportunities))
Swagger.property_type(::Type{ BoxScoreTeamsScoringOpportunities }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_BoxScoreTeamsScoringOpportunities[name]))}
Swagger.field_name(::Type{ BoxScoreTeamsScoringOpportunities }, property_name::Symbol) =  _property_map_BoxScoreTeamsScoringOpportunities[property_name]

function check_required(o::BoxScoreTeamsScoringOpportunities)
    true
end

function validate_property(::Type{ BoxScoreTeamsScoringOpportunities }, name::Symbol, val)
end