# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct PlaysApi <: SwaggerApi
    client::Swagger.Client
end

"""
Types of player play stats
Type of play stats
Return: Vector{PlayStatType}
"""
function getPlayStatTypes(_api::PlaysApi; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Vector{PlayStatType}, "/play/stat/types", [])
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Play stats by play
Gets player stats associated by play (limit 1000)
Param: year::Int32
Param: week::Int32
Param: team::String
Param: gameId::Int32
Param: athleteId::Int32
Param: statTypeId::Int32
Param: seasonType::String
Return: Vector{PlayStat}
"""
function getPlayStats(_api::PlaysApi; year=nothing, week=nothing, team=nothing, gameId=nothing, athleteId=nothing, statTypeId=nothing, seasonType=nothing, _mediaType=nothing)
    Swagger.validate_param("year", "getPlayStats", :minimum, year, 2013, false)

    Swagger.validate_param("week", "getPlayStats", :maximum, week, 16, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{PlayStat}, "/play/stats", [])
    Swagger.set_param(_ctx.query, "year", year)  # type Int32
    Swagger.set_param(_ctx.query, "week", week)  # type Int32
    Swagger.set_param(_ctx.query, "team", team)  # type String
    Swagger.set_param(_ctx.query, "gameId", gameId)  # type Int32
    Swagger.set_param(_ctx.query, "athleteId", athleteId)  # type Int32
    Swagger.set_param(_ctx.query, "statTypeId", statTypeId)  # type Int32
    Swagger.set_param(_ctx.query, "seasonType", seasonType)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Play types
Types of plays
Return: Vector{PlayType}
"""
function getPlayTypes(_api::PlaysApi; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Vector{PlayType}, "/play/types", [])
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Play by play data
Get play data and results. Requires either a week or team to be specified.
Param: year::Int32 (required)
Param: seasonType::String
Param: week::Int32
Param: team::String
Param: offense::String
Param: defense::String
Param: conference::String
Param: offenseConference::String
Param: defenseConference::String
Param: playType::Int32
Return: Vector{Play}
"""
function getPlays(_api::PlaysApi, year::Int32; seasonType=nothing, week=nothing, team=nothing, offense=nothing, defense=nothing, conference=nothing, offenseConference=nothing, defenseConference=nothing, playType=nothing, _mediaType=nothing)
    Swagger.validate_param("year", "getPlays", :minimum, year, 2001, false)

    Swagger.validate_param("week", "getPlays", :maximum, week, 16, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{Play}, "/plays", [])
    Swagger.set_param(_ctx.query, "seasonType", seasonType)  # type String
    Swagger.set_param(_ctx.query, "year", year)  # type Int32
    Swagger.set_param(_ctx.query, "week", week)  # type Int32
    Swagger.set_param(_ctx.query, "team", team)  # type String
    Swagger.set_param(_ctx.query, "offense", offense)  # type String
    Swagger.set_param(_ctx.query, "defense", defense)  # type String
    Swagger.set_param(_ctx.query, "conference", conference)  # type String
    Swagger.set_param(_ctx.query, "offenseConference", offenseConference)  # type String
    Swagger.set_param(_ctx.query, "defenseConference", defenseConference)  # type String
    Swagger.set_param(_ctx.query, "playType", playType)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

export getPlayStatTypes, getPlayStats, getPlayTypes, getPlays