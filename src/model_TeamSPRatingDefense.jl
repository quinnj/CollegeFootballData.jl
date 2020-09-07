# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


mutable struct TeamSPRatingDefense <: SwaggerModel
    rating::Any # spec type: Union{ Nothing, Float32 } # spec name: rating
    success::Any # spec type: Union{ Nothing, Float32 } # spec name: success
    explosiveness::Any # spec type: Union{ Nothing, Float32 } # spec name: explosiveness
    rushing::Any # spec type: Union{ Nothing, Float32 } # spec name: rushing
    pasing::Any # spec type: Union{ Nothing, Float32 } # spec name: pasing
    standardDowns::Any # spec type: Union{ Nothing, Float32 } # spec name: standardDowns
    passingDowns::Any # spec type: Union{ Nothing, Float32 } # spec name: passingDowns
    havoc::Any # spec type: Union{ Nothing, TeamSPRatingDefenseHavoc } # spec name: havoc

    function TeamSPRatingDefense(;rating=nothing, success=nothing, explosiveness=nothing, rushing=nothing, pasing=nothing, standardDowns=nothing, passingDowns=nothing, havoc=nothing)
        o = new()
        validate_property(TeamSPRatingDefense, Symbol("rating"), rating)
        setfield!(o, Symbol("rating"), rating)
        validate_property(TeamSPRatingDefense, Symbol("success"), success)
        setfield!(o, Symbol("success"), success)
        validate_property(TeamSPRatingDefense, Symbol("explosiveness"), explosiveness)
        setfield!(o, Symbol("explosiveness"), explosiveness)
        validate_property(TeamSPRatingDefense, Symbol("rushing"), rushing)
        setfield!(o, Symbol("rushing"), rushing)
        validate_property(TeamSPRatingDefense, Symbol("pasing"), pasing)
        setfield!(o, Symbol("pasing"), pasing)
        validate_property(TeamSPRatingDefense, Symbol("standardDowns"), standardDowns)
        setfield!(o, Symbol("standardDowns"), standardDowns)
        validate_property(TeamSPRatingDefense, Symbol("passingDowns"), passingDowns)
        setfield!(o, Symbol("passingDowns"), passingDowns)
        validate_property(TeamSPRatingDefense, Symbol("havoc"), havoc)
        setfield!(o, Symbol("havoc"), havoc)
        o
    end
end # type TeamSPRatingDefense

const _property_map_TeamSPRatingDefense = Dict{Symbol,Symbol}(Symbol("rating")=>Symbol("rating"), Symbol("success")=>Symbol("success"), Symbol("explosiveness")=>Symbol("explosiveness"), Symbol("rushing")=>Symbol("rushing"), Symbol("pasing")=>Symbol("pasing"), Symbol("standardDowns")=>Symbol("standardDowns"), Symbol("passingDowns")=>Symbol("passingDowns"), Symbol("havoc")=>Symbol("havoc"))
const _property_types_TeamSPRatingDefense = Dict{Symbol,String}(Symbol("rating")=>"Float32", Symbol("success")=>"Float32", Symbol("explosiveness")=>"Float32", Symbol("rushing")=>"Float32", Symbol("pasing")=>"Float32", Symbol("standardDowns")=>"Float32", Symbol("passingDowns")=>"Float32", Symbol("havoc")=>"TeamSPRatingDefenseHavoc")
Base.propertynames(::Type{ TeamSPRatingDefense }) = collect(keys(_property_map_TeamSPRatingDefense))
Swagger.property_type(::Type{ TeamSPRatingDefense }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_TeamSPRatingDefense[name]))}
Swagger.field_name(::Type{ TeamSPRatingDefense }, property_name::Symbol) =  _property_map_TeamSPRatingDefense[property_name]

function check_required(o::TeamSPRatingDefense)
    true
end

function validate_property(::Type{ TeamSPRatingDefense }, name::Symbol, val)
end