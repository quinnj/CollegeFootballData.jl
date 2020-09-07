# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


mutable struct TeamSeason <: SwaggerModel
    school::Any # spec type: Union{ Nothing, String } # spec name: school
    year::Any # spec type: Union{ Nothing, String } # spec name: year
    games::Any # spec type: Union{ Nothing, Int32 } # spec name: games
    wins::Any # spec type: Union{ Nothing, Int32 } # spec name: wins
    losses::Any # spec type: Union{ Nothing, Int32 } # spec name: losses
    ties::Any # spec type: Union{ Nothing, Int32 } # spec name: ties
    preseason_rank::Any # spec type: Union{ Nothing, Int32 } # spec name: preseason_rank
    postseason_rank::Any # spec type: Union{ Nothing, Int32 } # spec name: postseason_rank

    function TeamSeason(;school=nothing, year=nothing, games=nothing, wins=nothing, losses=nothing, ties=nothing, preseason_rank=nothing, postseason_rank=nothing)
        o = new()
        validate_property(TeamSeason, Symbol("school"), school)
        setfield!(o, Symbol("school"), school)
        validate_property(TeamSeason, Symbol("year"), year)
        setfield!(o, Symbol("year"), year)
        validate_property(TeamSeason, Symbol("games"), games)
        setfield!(o, Symbol("games"), games)
        validate_property(TeamSeason, Symbol("wins"), wins)
        setfield!(o, Symbol("wins"), wins)
        validate_property(TeamSeason, Symbol("losses"), losses)
        setfield!(o, Symbol("losses"), losses)
        validate_property(TeamSeason, Symbol("ties"), ties)
        setfield!(o, Symbol("ties"), ties)
        validate_property(TeamSeason, Symbol("preseason_rank"), preseason_rank)
        setfield!(o, Symbol("preseason_rank"), preseason_rank)
        validate_property(TeamSeason, Symbol("postseason_rank"), postseason_rank)
        setfield!(o, Symbol("postseason_rank"), postseason_rank)
        o
    end
end # type TeamSeason

const _property_map_TeamSeason = Dict{Symbol,Symbol}(Symbol("school")=>Symbol("school"), Symbol("year")=>Symbol("year"), Symbol("games")=>Symbol("games"), Symbol("wins")=>Symbol("wins"), Symbol("losses")=>Symbol("losses"), Symbol("ties")=>Symbol("ties"), Symbol("preseason_rank")=>Symbol("preseason_rank"), Symbol("postseason_rank")=>Symbol("postseason_rank"))
const _property_types_TeamSeason = Dict{Symbol,String}(Symbol("school")=>"String", Symbol("year")=>"String", Symbol("games")=>"Int32", Symbol("wins")=>"Int32", Symbol("losses")=>"Int32", Symbol("ties")=>"Int32", Symbol("preseason_rank")=>"Int32", Symbol("postseason_rank")=>"Int32")
Base.propertynames(::Type{ TeamSeason }) = collect(keys(_property_map_TeamSeason))
Swagger.property_type(::Type{ TeamSeason }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_TeamSeason[name]))}
Swagger.field_name(::Type{ TeamSeason }, property_name::Symbol) =  _property_map_TeamSeason[property_name]

function check_required(o::TeamSeason)
    true
end

function validate_property(::Type{ TeamSeason }, name::Symbol, val)
end
