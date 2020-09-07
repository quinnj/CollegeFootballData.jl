# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


mutable struct TeamSRSRating <: SwaggerModel
    year::Any # spec type: Union{ Nothing, Int32 } # spec name: year
    team::Any # spec type: Union{ Nothing, String } # spec name: team
    conference::Any # spec type: Union{ Nothing, String } # spec name: conference
    division::Any # spec type: Union{ Nothing, String } # spec name: division
    rating::Any # spec type: Union{ Nothing, Float32 } # spec name: rating

    function TeamSRSRating(;year=nothing, team=nothing, conference=nothing, division=nothing, rating=nothing)
        o = new()
        validate_property(TeamSRSRating, Symbol("year"), year)
        setfield!(o, Symbol("year"), year)
        validate_property(TeamSRSRating, Symbol("team"), team)
        setfield!(o, Symbol("team"), team)
        validate_property(TeamSRSRating, Symbol("conference"), conference)
        setfield!(o, Symbol("conference"), conference)
        validate_property(TeamSRSRating, Symbol("division"), division)
        setfield!(o, Symbol("division"), division)
        validate_property(TeamSRSRating, Symbol("rating"), rating)
        setfield!(o, Symbol("rating"), rating)
        o
    end
end # type TeamSRSRating

const _property_map_TeamSRSRating = Dict{Symbol,Symbol}(Symbol("year")=>Symbol("year"), Symbol("team")=>Symbol("team"), Symbol("conference")=>Symbol("conference"), Symbol("division")=>Symbol("division"), Symbol("rating")=>Symbol("rating"))
const _property_types_TeamSRSRating = Dict{Symbol,String}(Symbol("year")=>"Int32", Symbol("team")=>"String", Symbol("conference")=>"String", Symbol("division")=>"String", Symbol("rating")=>"Float32")
Base.propertynames(::Type{ TeamSRSRating }) = collect(keys(_property_map_TeamSRSRating))
Swagger.property_type(::Type{ TeamSRSRating }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_TeamSRSRating[name]))}
Swagger.field_name(::Type{ TeamSRSRating }, property_name::Symbol) =  _property_map_TeamSRSRating[property_name]

function check_required(o::TeamSRSRating)
    true
end

function validate_property(::Type{ TeamSRSRating }, name::Symbol, val)
end
