# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


mutable struct BoxScoreTeams <: SwaggerModel
    ppa::Any # spec type: Union{ Nothing, Vector{BoxScoreTeamsPpa} } # spec name: ppa
    successRates::Any # spec type: Union{ Nothing, Vector{BoxScoreTeamsSuccessRates} } # spec name: successRates
    explosiveness::Any # spec type: Union{ Nothing, Vector{BoxScoreTeamsExplosiveness} } # spec name: explosiveness
    rushing::Any # spec type: Union{ Nothing, Vector{BoxScoreTeamsRushing} } # spec name: rushing
    havoc::Any # spec type: Union{ Nothing, Vector{BoxScoreTeamsHavoc} } # spec name: havoc
    scoringOpportunities::Any # spec type: Union{ Nothing, Vector{BoxScoreTeamsScoringOpportunities} } # spec name: scoringOpportunities
    fieldPosition::Any # spec type: Union{ Nothing, Vector{BoxScoreTeamsFieldPosition} } # spec name: fieldPosition

    function BoxScoreTeams(;ppa=nothing, successRates=nothing, explosiveness=nothing, rushing=nothing, havoc=nothing, scoringOpportunities=nothing, fieldPosition=nothing)
        o = new()
        validate_property(BoxScoreTeams, Symbol("ppa"), ppa)
        setfield!(o, Symbol("ppa"), ppa)
        validate_property(BoxScoreTeams, Symbol("successRates"), successRates)
        setfield!(o, Symbol("successRates"), successRates)
        validate_property(BoxScoreTeams, Symbol("explosiveness"), explosiveness)
        setfield!(o, Symbol("explosiveness"), explosiveness)
        validate_property(BoxScoreTeams, Symbol("rushing"), rushing)
        setfield!(o, Symbol("rushing"), rushing)
        validate_property(BoxScoreTeams, Symbol("havoc"), havoc)
        setfield!(o, Symbol("havoc"), havoc)
        validate_property(BoxScoreTeams, Symbol("scoringOpportunities"), scoringOpportunities)
        setfield!(o, Symbol("scoringOpportunities"), scoringOpportunities)
        validate_property(BoxScoreTeams, Symbol("fieldPosition"), fieldPosition)
        setfield!(o, Symbol("fieldPosition"), fieldPosition)
        o
    end
end # type BoxScoreTeams

const _property_map_BoxScoreTeams = Dict{Symbol,Symbol}(Symbol("ppa")=>Symbol("ppa"), Symbol("successRates")=>Symbol("successRates"), Symbol("explosiveness")=>Symbol("explosiveness"), Symbol("rushing")=>Symbol("rushing"), Symbol("havoc")=>Symbol("havoc"), Symbol("scoringOpportunities")=>Symbol("scoringOpportunities"), Symbol("fieldPosition")=>Symbol("fieldPosition"))
const _property_types_BoxScoreTeams = Dict{Symbol,String}(Symbol("ppa")=>"Vector{BoxScoreTeamsPpa}", Symbol("successRates")=>"Vector{BoxScoreTeamsSuccessRates}", Symbol("explosiveness")=>"Vector{BoxScoreTeamsExplosiveness}", Symbol("rushing")=>"Vector{BoxScoreTeamsRushing}", Symbol("havoc")=>"Vector{BoxScoreTeamsHavoc}", Symbol("scoringOpportunities")=>"Vector{BoxScoreTeamsScoringOpportunities}", Symbol("fieldPosition")=>"Vector{BoxScoreTeamsFieldPosition}")
Base.propertynames(::Type{ BoxScoreTeams }) = collect(keys(_property_map_BoxScoreTeams))
Swagger.property_type(::Type{ BoxScoreTeams }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_BoxScoreTeams[name]))}
Swagger.field_name(::Type{ BoxScoreTeams }, property_name::Symbol) =  _property_map_BoxScoreTeams[property_name]

function check_required(o::BoxScoreTeams)
    true
end

function validate_property(::Type{ BoxScoreTeams }, name::Symbol, val)
end
