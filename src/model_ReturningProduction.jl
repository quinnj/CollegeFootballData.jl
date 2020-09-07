# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.


mutable struct ReturningProduction <: SwaggerModel
    team::Any # spec type: Union{ Nothing, String } # spec name: team
    conference::Any # spec type: Union{ Nothing, String } # spec name: conference
    totalPPA::Any # spec type: Union{ Nothing, Float32 } # spec name: totalPPA
    totalPassingPPA::Any # spec type: Union{ Nothing, Float32 } # spec name: totalPassingPPA
    totalReceivingPPA::Any # spec type: Union{ Nothing, Float32 } # spec name: totalReceivingPPA
    totalRushingPPA::Any # spec type: Union{ Nothing, Float32 } # spec name: totalRushingPPA
    percentPPA::Any # spec type: Union{ Nothing, Float32 } # spec name: percentPPA
    percentPassingPPA::Any # spec type: Union{ Nothing, Float32 } # spec name: percentPassingPPA
    percentReceivingPPA::Any # spec type: Union{ Nothing, Float32 } # spec name: percentReceivingPPA
    percentRushingPPA::Any # spec type: Union{ Nothing, Float32 } # spec name: percentRushingPPA
    usage::Any # spec type: Union{ Nothing, Float32 } # spec name: usage
    passingUsage::Any # spec type: Union{ Nothing, Float32 } # spec name: passingUsage
    receivingUsage::Any # spec type: Union{ Nothing, Float32 } # spec name: receivingUsage
    rushingUsage::Any # spec type: Union{ Nothing, Float32 } # spec name: rushingUsage

    function ReturningProduction(;team=nothing, conference=nothing, totalPPA=nothing, totalPassingPPA=nothing, totalReceivingPPA=nothing, totalRushingPPA=nothing, percentPPA=nothing, percentPassingPPA=nothing, percentReceivingPPA=nothing, percentRushingPPA=nothing, usage=nothing, passingUsage=nothing, receivingUsage=nothing, rushingUsage=nothing)
        o = new()
        validate_property(ReturningProduction, Symbol("team"), team)
        setfield!(o, Symbol("team"), team)
        validate_property(ReturningProduction, Symbol("conference"), conference)
        setfield!(o, Symbol("conference"), conference)
        validate_property(ReturningProduction, Symbol("totalPPA"), totalPPA)
        setfield!(o, Symbol("totalPPA"), totalPPA)
        validate_property(ReturningProduction, Symbol("totalPassingPPA"), totalPassingPPA)
        setfield!(o, Symbol("totalPassingPPA"), totalPassingPPA)
        validate_property(ReturningProduction, Symbol("totalReceivingPPA"), totalReceivingPPA)
        setfield!(o, Symbol("totalReceivingPPA"), totalReceivingPPA)
        validate_property(ReturningProduction, Symbol("totalRushingPPA"), totalRushingPPA)
        setfield!(o, Symbol("totalRushingPPA"), totalRushingPPA)
        validate_property(ReturningProduction, Symbol("percentPPA"), percentPPA)
        setfield!(o, Symbol("percentPPA"), percentPPA)
        validate_property(ReturningProduction, Symbol("percentPassingPPA"), percentPassingPPA)
        setfield!(o, Symbol("percentPassingPPA"), percentPassingPPA)
        validate_property(ReturningProduction, Symbol("percentReceivingPPA"), percentReceivingPPA)
        setfield!(o, Symbol("percentReceivingPPA"), percentReceivingPPA)
        validate_property(ReturningProduction, Symbol("percentRushingPPA"), percentRushingPPA)
        setfield!(o, Symbol("percentRushingPPA"), percentRushingPPA)
        validate_property(ReturningProduction, Symbol("usage"), usage)
        setfield!(o, Symbol("usage"), usage)
        validate_property(ReturningProduction, Symbol("passingUsage"), passingUsage)
        setfield!(o, Symbol("passingUsage"), passingUsage)
        validate_property(ReturningProduction, Symbol("receivingUsage"), receivingUsage)
        setfield!(o, Symbol("receivingUsage"), receivingUsage)
        validate_property(ReturningProduction, Symbol("rushingUsage"), rushingUsage)
        setfield!(o, Symbol("rushingUsage"), rushingUsage)
        o
    end
end # type ReturningProduction

const _property_map_ReturningProduction = Dict{Symbol,Symbol}(Symbol("team")=>Symbol("team"), Symbol("conference")=>Symbol("conference"), Symbol("totalPPA")=>Symbol("totalPPA"), Symbol("totalPassingPPA")=>Symbol("totalPassingPPA"), Symbol("totalReceivingPPA")=>Symbol("totalReceivingPPA"), Symbol("totalRushingPPA")=>Symbol("totalRushingPPA"), Symbol("percentPPA")=>Symbol("percentPPA"), Symbol("percentPassingPPA")=>Symbol("percentPassingPPA"), Symbol("percentReceivingPPA")=>Symbol("percentReceivingPPA"), Symbol("percentRushingPPA")=>Symbol("percentRushingPPA"), Symbol("usage")=>Symbol("usage"), Symbol("passingUsage")=>Symbol("passingUsage"), Symbol("receivingUsage")=>Symbol("receivingUsage"), Symbol("rushingUsage")=>Symbol("rushingUsage"))
const _property_types_ReturningProduction = Dict{Symbol,String}(Symbol("team")=>"String", Symbol("conference")=>"String", Symbol("totalPPA")=>"Float32", Symbol("totalPassingPPA")=>"Float32", Symbol("totalReceivingPPA")=>"Float32", Symbol("totalRushingPPA")=>"Float32", Symbol("percentPPA")=>"Float32", Symbol("percentPassingPPA")=>"Float32", Symbol("percentReceivingPPA")=>"Float32", Symbol("percentRushingPPA")=>"Float32", Symbol("usage")=>"Float32", Symbol("passingUsage")=>"Float32", Symbol("receivingUsage")=>"Float32", Symbol("rushingUsage")=>"Float32")
Base.propertynames(::Type{ ReturningProduction }) = collect(keys(_property_map_ReturningProduction))
Swagger.property_type(::Type{ ReturningProduction }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_ReturningProduction[name]))}
Swagger.field_name(::Type{ ReturningProduction }, property_name::Symbol) =  _property_map_ReturningProduction[property_name]

function check_required(o::ReturningProduction)
    true
end

function validate_property(::Type{ ReturningProduction }, name::Symbol, val)
end