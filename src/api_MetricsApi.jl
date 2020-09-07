# This file was generated by the Julia Swagger Code Generator
# Do not modify this file directly. Modify the swagger specification instead.

struct MetricsApi <: SwaggerApi
    client::Swagger.Client
end

"""
Team Predicated Points Added (PPA/EPA) by game
Predicted Points Added (PPA) by game
Param: year::Int32 (required)
Param: week::Int32
Param: team::String
Param: conference::String
Param: excludeGarbageTime::Bool
Return: Vector{GamePPA}
"""
function getGamePPA(_api::MetricsApi, year::Int32; week=nothing, team=nothing, conference=nothing, excludeGarbageTime=nothing, _mediaType=nothing)
    Swagger.validate_param("year", "getGamePPA", :minimum, year, 2001, false)

    Swagger.validate_param("week", "getGamePPA", :maximum, week, 16, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{GamePPA}, "/ppa/games", [])
    Swagger.set_param(_ctx.query, "year", year)  # type Int32
    Swagger.set_param(_ctx.query, "week", week)  # type Int32
    Swagger.set_param(_ctx.query, "team", team)  # type String
    Swagger.set_param(_ctx.query, "conference", conference)  # type String
    Swagger.set_param(_ctx.query, "excludeGarbageTime", excludeGarbageTime)  # type Bool
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Player Predicated Points Added (PPA/EPA) broken down by game
Predicted Points Added (PPA) by player game
Param: year::Int32
Param: week::Int32
Param: team::String
Param: position::String
Param: playerId::Int32
Param: threshold::String
Param: excludeGarbageTime::Bool
Return: Vector{PlayerGamePPA}
"""
function getPlayerGamePPA(_api::MetricsApi; year=nothing, week=nothing, team=nothing, position=nothing, playerId=nothing, threshold=nothing, excludeGarbageTime=nothing, _mediaType=nothing)
    Swagger.validate_param("year", "getPlayerGamePPA", :minimum, year, 2013, false)

    Swagger.validate_param("week", "getPlayerGamePPA", :maximum, week, 16, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{PlayerGamePPA}, "/ppa/players/games", [])
    Swagger.set_param(_ctx.query, "year", year)  # type Int32
    Swagger.set_param(_ctx.query, "week", week)  # type Int32
    Swagger.set_param(_ctx.query, "team", team)  # type String
    Swagger.set_param(_ctx.query, "position", position)  # type String
    Swagger.set_param(_ctx.query, "playerId", playerId)  # type Int32
    Swagger.set_param(_ctx.query, "threshold", threshold)  # type String
    Swagger.set_param(_ctx.query, "excludeGarbageTime", excludeGarbageTime)  # type Bool
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Player Predicated Points Added (PPA/EPA) broken down by season
Predicted Points Added (PPA) by player season
Param: year::Int32
Param: team::String
Param: conference::String
Param: position::String
Param: playerId::Int32
Param: threshold::String
Param: excludeGarbageTime::Bool
Return: Vector{PlayerSeasonPPA}
"""
function getPlayerSeasonPPA(_api::MetricsApi; year=nothing, team=nothing, conference=nothing, position=nothing, playerId=nothing, threshold=nothing, excludeGarbageTime=nothing, _mediaType=nothing)
    Swagger.validate_param("year", "getPlayerSeasonPPA", :minimum, year, 2013, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{PlayerSeasonPPA}, "/ppa/players/season", [])
    Swagger.set_param(_ctx.query, "year", year)  # type Int32
    Swagger.set_param(_ctx.query, "team", team)  # type String
    Swagger.set_param(_ctx.query, "conference", conference)  # type String
    Swagger.set_param(_ctx.query, "position", position)  # type String
    Swagger.set_param(_ctx.query, "playerId", playerId)  # type Int32
    Swagger.set_param(_ctx.query, "threshold", threshold)  # type String
    Swagger.set_param(_ctx.query, "excludeGarbageTime", excludeGarbageTime)  # type Bool
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Predicted Points (i.e. Expected Points or EP)
Predicted Points
Param: down::Int32 (required)
Param: distance::Int32 (required)
Return: Vector{PredictedPoints}
"""
function getPredictedPoints(_api::MetricsApi, down::Int32, distance::Int32; _mediaType=nothing)
    Swagger.validate_param("down", "getPredictedPoints", :maximum, down, 4, false)
    Swagger.validate_param("down", "getPredictedPoints", :minimum, down, 1, false)

    Swagger.validate_param("distance", "getPredictedPoints", :maximum, distance, 99, false)
    Swagger.validate_param("distance", "getPredictedPoints", :minimum, distance, 1, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{PredictedPoints}, "/ppa/predicted", [])
    Swagger.set_param(_ctx.query, "down", down)  # type Int32
    Swagger.set_param(_ctx.query, "distance", distance)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Pregame win probability data
Pregame win probabilities
Param: year::Int32
Param: week::Int32
Param: team::String
Param: seasonType::String
Return: Vector{PregameWP}
"""
function getPregameWinProbabilities(_api::MetricsApi; year=nothing, week=nothing, team=nothing, seasonType=nothing, _mediaType=nothing)
    Swagger.validate_param("year", "getPregameWinProbabilities", :minimum, year, 2001, false)

    Swagger.validate_param("week", "getPregameWinProbabilities", :maximum, week, 16, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{PregameWP}, "/metrics/wp/pregame", [])
    Swagger.set_param(_ctx.query, "year", year)  # type Int32
    Swagger.set_param(_ctx.query, "week", week)  # type Int32
    Swagger.set_param(_ctx.query, "team", team)  # type String
    Swagger.set_param(_ctx.query, "seasonType", seasonType)  # type String
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Predicted Points Added (PPA/EPA) data by team
Predicted Points Added (PPA)
Param: year::Int32
Param: team::String
Param: conference::String
Param: excludeGarbageTime::Bool
Return: Vector{TeamPPA}
"""
function getTeamPPA(_api::MetricsApi; year=nothing, team=nothing, conference=nothing, excludeGarbageTime=nothing, _mediaType=nothing)
    Swagger.validate_param("year", "getTeamPPA", :minimum, year, 2001, false)

    _ctx = Swagger.Ctx(_api.client, "GET", Vector{TeamPPA}, "/ppa/teams", [])
    Swagger.set_param(_ctx.query, "year", year)  # type Int32
    Swagger.set_param(_ctx.query, "team", team)  # type String
    Swagger.set_param(_ctx.query, "conference", conference)  # type String
    Swagger.set_param(_ctx.query, "excludeGarbageTime", excludeGarbageTime)  # type Bool
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

"""
Win probability chart data
Win probability data
Param: gameId::Int32 (required)
Return: Vector{PlayWP}
"""
function getWinProbabilityData(_api::MetricsApi, gameId::Int32; _mediaType=nothing)
    _ctx = Swagger.Ctx(_api.client, "GET", Vector{PlayWP}, "/metrics/wp", [])
    Swagger.set_param(_ctx.query, "gameId", gameId)  # type Int32
    Swagger.set_header_accept(_ctx, ["application/json"])
    Swagger.set_header_content_type(_ctx, (_mediaType === nothing) ? [] : [_mediaType])
    Swagger.exec(_ctx)
end

export getGamePPA, getPlayerGamePPA, getPlayerSeasonPPA, getPredictedPoints, getPregameWinProbabilities, getTeamPPA, getWinProbabilityData
