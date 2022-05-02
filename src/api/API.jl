module API

using StructTypes, JSON3, HTTP

function apicall(method, path, ::Type{Vector{RT}}; verbose::Int=0, kw...) where {RT}
    query = Dict{Symbol, Any}()
    for (k, v) in pairs(kw)
        if v !== nothing
            query[k] = v
        end
    end
    if isempty(query)
        query = nothing
    end
    obj = JSON3.read(HTTP.request(uppercase(method), string(HOST, path), query=query, verbose=verbose).body)
    if obj isa AbstractVector
        vals = RT[]
        for val in obj
            x = StructTypes.constructfrom(RT, val)
            push!(vals, x)
        end
        return vals
    else
        return StructTypes.constructfrom(RT, obj)
    end
end

const HOST = "https://api.collegefootballdata.com"

# MODEL DEFINITIONS
mutable struct Game
    id::Any
    season::Any
    week::Any
    season_type::Any
    start_date::Any
    start_time_tbd::Any
    neutral_site::Any
    conference_game::Any
    attendance::Any
    venue_id::Any
    venue::Any
    home_id::Any
    home_team::Any
    home_conference::Any
    home_points::Any
    home_line_scores::Any
    home_post_win_prob::Any
    away_id::Any
    away_team::Any
    away_conference::Any
    away_points::Any
    away_line_scores::Any
    away_post_win_prob::Any
    excitement_index::Any

    Game() = new()
end # mutable struct Game

StructTypes.StructType(::Type{Game}) = StructTypes.Mutable()

mutable struct TeamRecord
    year::Any
    team::Any
    conference::Any
    division::Any
    total::Any
    conferenceGames::Any
    homeGames::Any
    awayGames::Any

    TeamRecord() = new()
end # mutable struct TeamRecord

StructTypes.StructType(::Type{TeamRecord}) = StructTypes.Mutable()

mutable struct GameMedia
    id::Any
    season::Any
    week::Any
    seasonType::Any
    startTime::Any
    isStartTimeTBD::Any
    homeTeam::Any
    homeConference::Any
    awayTeam::Any
    awayConference::Any
    mediaType::Any
    outlet::Any

    GameMedia() = new()
end # mutable struct GameMedia

StructTypes.StructType(::Type{GameMedia}) = StructTypes.Mutable()

mutable struct PlayerGame
    id::Any
    teams::Any

    PlayerGame() = new()
end # mutable struct PlayerGame

StructTypes.StructType(::Type{PlayerGame}) = StructTypes.Mutable()

mutable struct TeamGame
    id::Any
    teams::Any

    TeamGame() = new()
end # mutable struct TeamGame

StructTypes.StructType(::Type{TeamGame}) = StructTypes.Mutable()

mutable struct Drive
    offense::Any
    offense_conference::Any
    defense::Any
    defense_conference::Any
    game_id::Any
    id::Any
    drive_number::Any
    scoring::Any
    start_period::Any
    start_yardline::Any
    start_yards_to_goal::Any
    start_time::Any
    end_period::Any
    end_yardline::Any
    end_yards_to_goal::Any
    end_time::Any
    plays::Any
    yards::Any
    drive_result::Any

    Drive() = new()
end # mutable struct Drive

StructTypes.StructType(::Type{Drive}) = StructTypes.Mutable()

mutable struct Play
    id::Any
    drive_id::Any
    game_id::Any
    drive_number::Any
    play_number::Any
    offense::Any
    offense_conference::Any
    offense_score::Any
    defense::Any
    home::Any
    away::Any
    defense_conference::Any
    defense_score::Any
    period::Any
    clock::Any
    offense_timeouts::Any
    defense_timeouts::Any
    yard_line::Any
    yards_to_goal::Any
    down::Any
    distance::Any
    yards_gained::Any
    scoring::Any
    play_type::Any
    play_text::Any
    ppa::Any

    Play() = new()
end # mutable struct Play

StructTypes.StructType(::Type{Play}) = StructTypes.Mutable()

mutable struct PlayType
    id::Any
    text::Any
    abbreviation::Any

    PlayType() = new()
end # mutable struct PlayType

StructTypes.StructType(::Type{PlayType}) = StructTypes.Mutable()

mutable struct Conference
    id::Any
    name::Any
    short_name::Any
    abbreviation::Any

    Conference() = new()
end # mutable struct Conference

StructTypes.StructType(::Type{Conference}) = StructTypes.Mutable()

mutable struct Team
    id::Any
    school::Any
    mascot::Any
    abbreviation::Any
    alt_name_1::Any
    alt_name_2::Any
    alt_name_3::Any
    conference::Any
    division::Any
    color::Any
    alt_color::Any
    logos::Any

    Team() = new()
end # mutable struct Team

StructTypes.StructType(::Type{Team}) = StructTypes.Mutable()

mutable struct Player
    id::Any
    first_name::Any
    last_name::Any
    height::Any
    weight::Any
    jersey::Any
    year::Any
    position::Any
    city::Any
    state::Any
    country::Any

    Player() = new()
end # mutable struct Player

StructTypes.StructType(::Type{Player}) = StructTypes.Mutable()

mutable struct TeamTalent
    year::Any
    school::Any
    talent::Any

    TeamTalent() = new()
end # mutable struct TeamTalent

StructTypes.StructType(::Type{TeamTalent}) = StructTypes.Mutable()

mutable struct TeamSeason
    school::Any
    year::Any
    games::Any
    wins::Any
    losses::Any
    ties::Any
    preseason_rank::Any
    postseason_rank::Any
    srs::Any
    sp_overall::Any
    sp_offense::Any
    sp_defense::Any

    TeamSeason() = new()
end # mutable struct TeamSeason

StructTypes.StructType(::Type{TeamSeason}) = StructTypes.Mutable()

mutable struct Venue
    id::Any
    name::Any
    capacity::Any
    grass::Any
    city::Any
    state::Any
    zip::Any
    country_code::Any
    location::Any
    elevation::Any
    year::Any
    dome::Any
    timezone::Any

    Venue() = new()
end # mutable struct Venue

StructTypes.StructType(::Type{Venue}) = StructTypes.Mutable()

mutable struct RankingWeek
    season::Any
    seasonType::Any
    week::Any
    polls::Any

    RankingWeek() = new()
end # mutable struct RankingWeek

StructTypes.StructType(::Type{RankingWeek}) = StructTypes.Mutable()

mutable struct TeamMatchup
    team1::Any
    team2::Any
    startYear::Any
    endYear::Any
    team1Wins::Any
    team2Wins::Any
    ties::Any
    games::Any

    TeamMatchup() = new()
end # mutable struct TeamMatchup

StructTypes.StructType(::Type{TeamMatchup}) = StructTypes.Mutable()

mutable struct GameLines
    id::Any
    season::Any
    week::Any
    seasonType::Any
    homeTeam::Any
    homeConference::Any
    homeScore::Any
    awayTeam::Any
    awayConference::Any
    awayScore::Any
    lines::Any

    GameLines() = new()
end # mutable struct GameLines

StructTypes.StructType(::Type{GameLines}) = StructTypes.Mutable()

mutable struct Recruit
    recruitType::Any
    year::Any
    ranking::Any
    name::Any
    school::Any
    committedTo::Any
    position::Any
    height::Any
    weight::Any
    stars::Any
    rating::Any
    city::Any
    stateProvince::Any
    country::Any

    Recruit() = new()
end # mutable struct Recruit

StructTypes.StructType(::Type{Recruit}) = StructTypes.Mutable()

mutable struct TeamRecruitingRank
    year::Any
    rank::Any
    team::Any
    points::Any

    TeamRecruitingRank() = new()
end # mutable struct TeamRecruitingRank

StructTypes.StructType(::Type{TeamRecruitingRank}) = StructTypes.Mutable()

mutable struct PositionGroupRecruitingRating
    team::Any
    conference::Any
    positiionGroup::Any
    averageRating::Any
    totalRating::Any
    commits::Any
    averageStars::Any

    PositionGroupRecruitingRating() = new()
end # mutable struct PositionGroupRecruitingRating

StructTypes.StructType(::Type{PositionGroupRecruitingRating}) = StructTypes.Mutable()

mutable struct TeamSRSRating
    year::Any
    team::Any
    conference::Any
    division::Any
    rating::Any

    TeamSRSRating() = new()
end # mutable struct TeamSRSRating

StructTypes.StructType(::Type{TeamSRSRating}) = StructTypes.Mutable()

mutable struct TeamSPRating
    year::Any
    team::Any
    conference::Any
    rating::Any
    secondOrderWins::Any
    sos::Any
    offense::Any
    defense::Any
    specialTeams::Any

    TeamSPRating() = new()
end # mutable struct TeamSPRating

StructTypes.StructType(::Type{TeamSPRating}) = StructTypes.Mutable()

mutable struct ConferenceSPRating
    year::Any
    conference::Any
    rating::Any
    secondOrderWins::Any
    sos::Any
    offense::Any
    defense::Any
    specialTeams::Any

    ConferenceSPRating() = new()
end # mutable struct ConferenceSPRating

StructTypes.StructType(::Type{ConferenceSPRating}) = StructTypes.Mutable()

mutable struct PredictedPoints
    yardLine::Any
    predictedPoints::Any

    PredictedPoints() = new()
end # mutable struct PredictedPoints

StructTypes.StructType(::Type{PredictedPoints}) = StructTypes.Mutable()

mutable struct TeamSeasonStat
    season::Any
    team::Any
    conference::Any
    statName::Any
    statValue::Any

    TeamSeasonStat() = new()
end # mutable struct TeamSeasonStat

StructTypes.StructType(::Type{TeamSeasonStat}) = StructTypes.Mutable()

mutable struct TeamPPA
    season::Any
    team::Any
    conference::Any
    offense::Any
    defense::Any

    TeamPPA() = new()
end # mutable struct TeamPPA

StructTypes.StructType(::Type{TeamPPA}) = StructTypes.Mutable()

mutable struct GamePPA
    id::Any
    season::Any
    week::Any
    team::Any
    conference::Any
    opponnent::Any
    offense::Any
    defense::Any

    GamePPA() = new()
end # mutable struct GamePPA

StructTypes.StructType(::Type{GamePPA}) = StructTypes.Mutable()

mutable struct PlayWP
    gamesId::Any
    playId::Any
    playText::Any
    homeId::Any
    home::Any
    awayId::Any
    away::Any
    spread::Any
    homeBall::Any
    homeScore::Any
    awayScore::Any
    timeRemaining::Any
    yardLine::Any
    down::Any
    distance::Any
    homeWinProb::Any
    playNumber::Any

    PlayWP() = new()
end # mutable struct PlayWP

StructTypes.StructType(::Type{PlayWP}) = StructTypes.Mutable()

mutable struct PregameWP
    season::Any
    seasonType::Any
    week::Any
    gameId::Any
    homeTeam::Any
    awayTeam::Any
    spread::Any
    homeWinProb::Any

    PregameWP() = new()
end # mutable struct PregameWP

StructTypes.StructType(::Type{PregameWP}) = StructTypes.Mutable()

mutable struct PlayStatType
    id::Any
    name::Any

    PlayStatType() = new()
end # mutable struct PlayStatType

StructTypes.StructType(::Type{PlayStatType}) = StructTypes.Mutable()

mutable struct PlayStat
    gameId::Any
    season::Any
    week::Any
    opponent::Any
    teamScore::Any
    opponentScore::Any
    driveId::Any
    playId::Any
    period::Any
    clock::Any
    yardsToGoal::Any
    down::Any
    distance::Any
    athleteId::Any
    athleteName::Any
    statType::Any
    stat::Any

    PlayStat() = new()
end # mutable struct PlayStat

StructTypes.StructType(::Type{PlayStat}) = StructTypes.Mutable()

mutable struct AdvancedSeasonStat
    season::Any
    team::Any
    conference::Any
    offense::Any
    defense::Any

    AdvancedSeasonStat() = new()
end # mutable struct AdvancedSeasonStat

StructTypes.StructType(::Type{AdvancedSeasonStat}) = StructTypes.Mutable()

mutable struct AdvancedGameStat
    gameId::Any
    season::Any
    week::Any
    team::Any
    opponent::Any
    offense::Any
    defense::Any

    AdvancedGameStat() = new()
end # mutable struct AdvancedGameStat

StructTypes.StructType(::Type{AdvancedGameStat}) = StructTypes.Mutable()

mutable struct PlayerSearchResult
    id::Any
    team::Any
    name::Any
    firstName::Any
    lastName::Any
    weight::Any
    height::Any
    jersey::Any
    position::Any
    hometown::Any
    teamColor::Any
    teamColorSecondary::Any

    PlayerSearchResult() = new()
end # mutable struct PlayerSearchResult

StructTypes.StructType(::Type{PlayerSearchResult}) = StructTypes.Mutable()

mutable struct PlayerGamePPA
    season::Any
    week::Any
    name::Any
    position::Any
    team::Any
    opponent::Any
    averagePPA::Any

    PlayerGamePPA() = new()
end # mutable struct PlayerGamePPA

StructTypes.StructType(::Type{PlayerGamePPA}) = StructTypes.Mutable()

mutable struct PlayerSeasonPPA
    season::Any
    id::Any
    name::Any
    position::Any
    team::Any
    conference::Any
    averagePPA::Any
    totalPPA::Any

    PlayerSeasonPPA() = new()
end # mutable struct PlayerSeasonPPA

StructTypes.StructType(::Type{PlayerSeasonPPA}) = StructTypes.Mutable()

mutable struct PlayerUsage
    season::Any
    id::Any
    name::Any
    position::Any
    team::Any
    conference::Any
    usage::Any

    PlayerUsage() = new()
end # mutable struct PlayerUsage

StructTypes.StructType(::Type{PlayerUsage}) = StructTypes.Mutable()

mutable struct ReturningProduction
    season::Any
    team::Any
    conference::Any
    totalPPA::Any
    totalPassingPPA::Any
    totalReceivingPPA::Any
    totalRushingPPA::Any
    percentPPA::Any
    percentPassingPPA::Any
    percentReceivingPPA::Any
    percentRushingPPA::Any
    usage::Any
    passingUsage::Any
    receivingUsage::Any
    rushingUsage::Any

    ReturningProduction() = new()
end # mutable struct ReturningProduction

StructTypes.StructType(::Type{ReturningProduction}) = StructTypes.Mutable()

mutable struct BoxScore
    teams::Any
    players::Any

    BoxScore() = new()
end # mutable struct BoxScore

StructTypes.StructType(::Type{BoxScore}) = StructTypes.Mutable()

mutable struct PlayerSeasonStat
    season::Any
    playerId::Any
    player::Any
    team::Any
    conference::Any
    category::Any
    statType::Any
    stat::Any

    PlayerSeasonStat() = new()
end # mutable struct PlayerSeasonStat

StructTypes.StructType(::Type{PlayerSeasonStat}) = StructTypes.Mutable()

# ENDPOINT DEFINITIONS
getGames(; year::Int=error("year keyword argument is required"), week::Union{Nothing, Int}=nothing, seasonType::Union{Nothing, String}="regular", team::Union{Nothing, String}=nothing, home::Union{Nothing, String}=nothing, away::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, id::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/games", Vector{Game}; year=year, week=week, seasonType=seasonType, team=team, home=home, away=away, conference=conference, id=id, verbose=verbose)
getTeamRecords(; year::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/records", Vector{TeamRecord}; year=year, team=team, conference=conference, verbose=verbose)
getGameMedia(; year::Int=error("year keyword argument is required"), week::Union{Nothing, Int}=nothing, seasonType::Union{Nothing, String}=nothing, team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, mediaType::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/games/media", Vector{GameMedia}; year=year, week=week, seasonType=seasonType, team=team, conference=conference, mediaType=mediaType, verbose=verbose)
getPlayerGameStats(; year::Int=error("year keyword argument is required"), week::Union{Nothing, Int}=nothing, seasonType::Union{Nothing, String}="regular", team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, category::Union{Nothing, String}=nothing, gameId::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/games/players", Vector{PlayerGame}; year=year, week=week, seasonType=seasonType, team=team, conference=conference, category=category, gameId=gameId, verbose=verbose)
getTeamGameStats(; year::Int=error("year keyword argument is required"), week::Union{Nothing, Int}=nothing, seasonType::Union{Nothing, String}="regular", team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, gameId::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/games/teams", Vector{TeamGame}; year=year, week=week, seasonType=seasonType, team=team, conference=conference, gameId=gameId, verbose=verbose)
getAdvancedBoxScore(; gameId::Int=error("gameId keyword argument is required"), verbose::Int=0) = apicall("get", "/game/box/advanced", Vector{BoxScore}; gameId=gameId, verbose=verbose)
getDrvies(; seasonType::Union{Nothing, String}="regular", year::Int=error("year keyword argument is required"), week::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, offense::Union{Nothing, String}=nothing, defense::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, offenseConference::Union{Nothing, String}=nothing, defenseConference::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/drives", Vector{Drive}; seasonType=seasonType, year=year, week=week, team=team, offense=offense, defense=defense, conference=conference, offenseConference=offenseConference, defenseConference=defenseConference, verbose=verbose)
getPlays(; seasonType::Union{Nothing, String}="regular", year::Int=error("year keyword argument is required"), week::Int=error("week keyword argument is required"), team::Union{Nothing, String}=nothing, offense::Union{Nothing, String}=nothing, defense::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, offenseConference::Union{Nothing, String}=nothing, defenseConference::Union{Nothing, String}=nothing, playType::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/plays", Vector{Play}; seasonType=seasonType, year=year, week=week, team=team, offense=offense, defense=defense, conference=conference, offenseConference=offenseConference, defenseConference=defenseConference, playType=playType, verbose=verbose)
getPlayTypes() = apicall("get", "/play/types", Vector{PlayType})
getPlayStats(; year::Union{Nothing, Int}=nothing, week::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, gameId::Union{Nothing, Int}=nothing, athleteId::Union{Nothing, Int}=nothing, statTypeId::Union{Nothing, Int}=nothing, seasonType::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/play/stats", Vector{PlayStat}; year=year, week=week, team=team, gameId=gameId, athleteId=athleteId, statTypeId=statTypeId, seasonType=seasonType, verbose=verbose)
getPlayStatTypes() = apicall("get", "/play/stat/types", Vector{PlayStatType})
getConferences() = apicall("get", "/conferences", Vector{Conference})
getTeams(; conference::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/teams", Vector{Team}; conference=conference, verbose=verbose)
getFbsTeams(; year::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/teams/fbs", Vector{Team}; year=year, verbose=verbose)
getRoster(; team::String=error("team keyword argument is required"), year::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/roster", Vector{Player}; team=team, year=year, verbose=verbose)
getTalent(; year::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/talent", Vector{TeamTalent}; year=year, verbose=verbose)
getTeamMatchup(; team1::String=error("team1 keyword argument is required"), team2::String=error("team2 keyword argument is required"), minYear::Union{Nothing, Int}=nothing, maxYear::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/teams/matchup", Vector{TeamMatchup}; team1=team1, team2=team2, minYear=minYear, maxYear=maxYear, verbose=verbose)
getVenues() = apicall("get", "/venues", Vector{Venue})
getCoaches(; firstName::Union{Nothing, String}=nothing, lastName::Union{Nothing, String}=nothing, team::Union{Nothing, String}=nothing, year::Union{Nothing, Int}=nothing, minYear::Union{Nothing, Int}=nothing, maxYear::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/coaches", Vector{NamedTuple{(:first_name, :last_name, :seasons,), Tuple{String, String, Vector{TeamSeason}}}}; firstName=firstName, lastName=lastName, team=team, year=year, minYear=minYear, maxYear=maxYear, verbose=verbose)
getRankings(; year::Int=error("year keyword argument is required"), week::Union{Nothing, Int}=nothing, seasonType::Union{Nothing, String}="regular", verbose::Int=0) = apicall("get", "/rankings", Vector{RankingWeek}; year=year, week=week, seasonType=seasonType, verbose=verbose)
getLines(; gameId::Union{Nothing, Int}=nothing, year::Union{Nothing, Int}=nothing, week::Union{Nothing, Int}=nothing, seasonType::Union{Nothing, String}="regular", team::Union{Nothing, String}=nothing, home::Union{Nothing, String}=nothing, away::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/lines", Vector{GameLines}; gameId=gameId, year=year, week=week, seasonType=seasonType, team=team, home=home, away=away, conference=conference, verbose=verbose)
getRecruitingPlayers(; year::Union{Nothing, Int}=nothing, classification::Union{Nothing, String}="HighSchool", position::Union{Nothing, String}=nothing, state::Union{Nothing, String}=nothing, team::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/recruiting/players", Vector{Recruit}; year=year, classification=classification, position=position, state=state, team=team, verbose=verbose)
getRecruitingTeams(; year::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/recruiting/teams", Vector{TeamRecruitingRank}; year=year, team=team, verbose=verbose)
getRecruitingGroups(; startYear::Union{Nothing, Int}=nothing, endYear::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/recruiting/groups", Vector{PositionGroupRecruitingRating}; startYear=startYear, endYear=endYear, team=team, conference=conference, verbose=verbose)
getSPRatings(; year::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/ratings/sp", Vector{TeamSPRating}; year=year, team=team, verbose=verbose)
getSRSRatings(; year::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/ratings/srs", Vector{TeamSRSRating}; year=year, team=team, conference=conference, verbose=verbose)
getConferenceSPRatings(; year::Union{Nothing, Int}=nothing, conference::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/ratings/sp/conferences", Vector{ConferenceSPRating}; year=year, conference=conference, verbose=verbose)
getPredictedPoints(; down::Int=error("down keyword argument is required"), distance::Int=error("distance keyword argument is required"), verbose::Int=0) = apicall("get", "/ppa/predicted", Vector{PredictedPoints}; down=down, distance=distance, verbose=verbose)
getTeamPPA(; year::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, excludeGarbageTime::Union{Nothing, Bool}=nothing, verbose::Int=0) = apicall("get", "/ppa/teams", Vector{TeamPPA}; year=year, team=team, conference=conference, excludeGarbageTime=excludeGarbageTime, verbose=verbose)
getGamePPA(; year::Int=error("year keyword argument is required"), week::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, excludeGarbageTime::Union{Nothing, Bool}=nothing, verbose::Int=0) = apicall("get", "/ppa/games", Vector{GamePPA}; year=year, week=week, team=team, conference=conference, excludeGarbageTime=excludeGarbageTime, verbose=verbose)
getPlayerGamePPA(; year::Union{Nothing, Int}=nothing, week::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, position::Union{Nothing, String}=nothing, playerId::Union{Nothing, Int}=nothing, threshold::Union{Nothing, String}=nothing, excludeGarbageTime::Union{Nothing, Bool}=nothing, verbose::Int=0) = apicall("get", "/ppa/players/games", Vector{PlayerGamePPA}; year=year, week=week, team=team, position=position, playerId=playerId, threshold=threshold, excludeGarbageTime=excludeGarbageTime, verbose=verbose)
getPlayerSeasonPPA(; year::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, position::Union{Nothing, String}=nothing, playerId::Union{Nothing, Int}=nothing, threshold::Union{Nothing, String}=nothing, excludeGarbageTime::Union{Nothing, Bool}=nothing, verbose::Int=0) = apicall("get", "/ppa/players/season", Vector{PlayerSeasonPPA}; year=year, team=team, conference=conference, position=position, playerId=playerId, threshold=threshold, excludeGarbageTime=excludeGarbageTime, verbose=verbose)
getWinProbabilityData(; gameId::Int=error("gameId keyword argument is required"), verbose::Int=0) = apicall("get", "/metrics/wp", Vector{PlayWP}; gameId=gameId, verbose=verbose)
getPregameWinProbabilities(; year::Union{Nothing, Int}=nothing, week::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, seasonType::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/metrics/wp/pregame", Vector{PregameWP}; year=year, week=week, team=team, seasonType=seasonType, verbose=verbose)
getTeamSeasonStats(; year::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, startWeek::Union{Nothing, Int}=nothing, endWeek::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/stats/season", Vector{TeamSeasonStat}; year=year, team=team, conference=conference, startWeek=startWeek, endWeek=endWeek, verbose=verbose)
getAdvancedTeamSeasonStats(; year::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, excludeGarbageTime::Union{Nothing, Bool}=nothing, startWeek::Union{Nothing, Int}=nothing, endWeek::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/stats/season/advanced", Vector{AdvancedSeasonStat}; year=year, team=team, excludeGarbageTime=excludeGarbageTime, startWeek=startWeek, endWeek=endWeek, verbose=verbose)
getAdvancedTeamGameStats(; year::Union{Nothing, Int}=nothing, week::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, opponent::Union{Nothing, String}=nothing, excludeGarbageTime::Union{Nothing, Bool}=nothing, seasonType::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/stats/game/advanced", Vector{AdvancedGameStat}; year=year, week=week, team=team, opponent=opponent, excludeGarbageTime=excludeGarbageTime, seasonType=seasonType, verbose=verbose)
getStatCategories() = apicall("get", "/stats/categories", Vector{String})
playerSearch(; searchTerm::String=error("searchTerm keyword argument is required"), position::Union{Nothing, String}=nothing, team::Union{Nothing, String}=nothing, year::Union{Nothing, Int}=nothing, verbose::Int=0) = apicall("get", "/player/search", Vector{PlayerSearchResult}; searchTerm=searchTerm, position=position, team=team, year=year, verbose=verbose)
getPlayerUsage(; year::Int=error("year keyword argument is required"), team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, position::Union{Nothing, String}=nothing, playerId::Union{Nothing, Int}=nothing, excludeGarbageTime::Union{Nothing, Bool}=nothing, verbose::Int=0) = apicall("get", "/player/usage", Vector{PlayerUsage}; year=year, team=team, conference=conference, position=position, playerId=playerId, excludeGarbageTime=excludeGarbageTime, verbose=verbose)
getReturningProduction(; year::Union{Nothing, Int}=nothing, team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/player/returning", Vector{ReturningProduction}; year=year, team=team, conference=conference, verbose=verbose)
getPlayerSeasonStats(; year::Int=error("year keyword argument is required"), team::Union{Nothing, String}=nothing, conference::Union{Nothing, String}=nothing, startWeek::Union{Nothing, Int}=nothing, endWeek::Union{Nothing, Int}=nothing, seasonType::Union{Nothing, String}=nothing, category::Union{Nothing, String}=nothing, verbose::Int=0) = apicall("get", "/stats/player/season", Vector{PlayerSeasonStat}; year=year, team=team, conference=conference, startWeek=startWeek, endWeek=endWeek, seasonType=seasonType, category=category, verbose=verbose)

end # module #API
