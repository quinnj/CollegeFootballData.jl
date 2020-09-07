# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


mutable struct ConferenceSPRating <: SwaggerModel
    year::Any # spec type: Union{ Nothing, Int32 } # spec name: year
    conference::Any # spec type: Union{ Nothing, String } # spec name: conference
    rating::Any # spec type: Union{ Nothing, Float32 } # spec name: rating
    secondOrderWins::Any # spec type: Union{ Nothing, Float32 } # spec name: secondOrderWins
    sos::Any # spec type: Union{ Nothing, Float32 } # spec name: sos
    offense::Any # spec type: Union{ Nothing, TeamSPRatingOffense } # spec name: offense
    defense::Any # spec type: Union{ Nothing, TeamSPRatingDefense } # spec name: defense
    specialTeams::Any # spec type: Union{ Nothing, TeamSPRatingSpecialTeams } # spec name: specialTeams

    function ConferenceSPRating(;year=nothing, conference=nothing, rating=nothing, secondOrderWins=nothing, sos=nothing, offense=nothing, defense=nothing, specialTeams=nothing)
        o = new()
        validate_property(ConferenceSPRating, Symbol("year"), year)
        setfield!(o, Symbol("year"), year)
        validate_property(ConferenceSPRating, Symbol("conference"), conference)
        setfield!(o, Symbol("conference"), conference)
        validate_property(ConferenceSPRating, Symbol("rating"), rating)
        setfield!(o, Symbol("rating"), rating)
        validate_property(ConferenceSPRating, Symbol("secondOrderWins"), secondOrderWins)
        setfield!(o, Symbol("secondOrderWins"), secondOrderWins)
        validate_property(ConferenceSPRating, Symbol("sos"), sos)
        setfield!(o, Symbol("sos"), sos)
        validate_property(ConferenceSPRating, Symbol("offense"), offense)
        setfield!(o, Symbol("offense"), offense)
        validate_property(ConferenceSPRating, Symbol("defense"), defense)
        setfield!(o, Symbol("defense"), defense)
        validate_property(ConferenceSPRating, Symbol("specialTeams"), specialTeams)
        setfield!(o, Symbol("specialTeams"), specialTeams)
        o
    end
end # type ConferenceSPRating

const _property_map_ConferenceSPRating = Dict{Symbol,Symbol}(Symbol("year")=>Symbol("year"), Symbol("conference")=>Symbol("conference"), Symbol("rating")=>Symbol("rating"), Symbol("secondOrderWins")=>Symbol("secondOrderWins"), Symbol("sos")=>Symbol("sos"), Symbol("offense")=>Symbol("offense"), Symbol("defense")=>Symbol("defense"), Symbol("specialTeams")=>Symbol("specialTeams"))
const _property_types_ConferenceSPRating = Dict{Symbol,String}(Symbol("year")=>"Int32", Symbol("conference")=>"String", Symbol("rating")=>"Float32", Symbol("secondOrderWins")=>"Float32", Symbol("sos")=>"Float32", Symbol("offense")=>"TeamSPRatingOffense", Symbol("defense")=>"TeamSPRatingDefense", Symbol("specialTeams")=>"TeamSPRatingSpecialTeams")
Base.propertynames(::Type{ ConferenceSPRating }) = collect(keys(_property_map_ConferenceSPRating))
Swagger.property_type(::Type{ ConferenceSPRating }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ConferenceSPRating[name]))}
Swagger.field_name(::Type{ ConferenceSPRating }, property_name::Symbol) =  _property_map_ConferenceSPRating[property_name]

function check_required(o::ConferenceSPRating)
    true
end

function validate_property(::Type{ ConferenceSPRating }, name::Symbol, val)
end
