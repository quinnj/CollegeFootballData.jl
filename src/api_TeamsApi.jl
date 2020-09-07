# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct TeamsApi <: SwaggerApi
    client::Swagger.Client
end

"""
FBS team list
Information on major division teams
Param: year::Int32
Return: Vector{Team}
"""
function getFbsTeams(_api::TeamsApi; year=nothing, _mediaType=nothing)
    Swagger.validate_param("year", "getFbsTeams", :minimum, year, 1869, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{Team}, "/teams/fbs", [])
    Swagger.set_param(_ctx.query, "year", year)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Team rosters
Roster data
Param: team::String (required)
Param: year::Int32
Return: Vector{Player}
"""
function getRoster(_api::TeamsApi, team::String; year=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Vector{Player}, "/roster", [])
    Swagger.set_param(_ctx.query, "team", team)  # type String
    Swagger.set_param(_ctx.query, "year", year)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Team talent composite rankings
Team talent composite
Param: year::Int32
Return: Vector{TeamTalent}
"""
function getTalent(_api::TeamsApi; year=nothing, _mediaType=nothing)
    Swagger.validate_param("year", "getTalent", :minimum, year, 2015, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{TeamTalent}, "/talent", [])
    Swagger.set_param(_ctx.query, "year", year)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Team matchup history
Matchup history
Param: team1::String (required)
Param: team2::String (required)
Param: minYear::Int32
Param: maxYear::Int32
Return: Vector{TeamMatchup}
"""
function getTeamMatchup(_api::TeamsApi, team1::String, team2::String; minYear=nothing, maxYear=nothing, _mediaType=nothing)
    Swagger.validate_param("maxYear", "getTeamMatchup", :minimum, maxYear, 1869, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{TeamMatchup}, "/teams/matchup", [])
    Swagger.set_param(_ctx.query, "team1", team1)  # type String
    Swagger.set_param(_ctx.query, "team2", team2)  # type String
    Swagger.set_param(_ctx.query, "minYear", minYear)  # type Int32
    Swagger.set_param(_ctx.query, "maxYear", maxYear)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Team information
Get team information
Param: conference::String
Return: Vector{Team}
"""
function getTeams(_api::TeamsApi; conference=nothing, _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Vector{Team}, "/teams", [])
    Swagger.set_param(_ctx.query, "conference", conference)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

export getFbsTeams, getRoster, getTalent, getTeamMatchup, getTeams