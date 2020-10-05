using Test, CollegeFootballData

@testset "API endpoints" begin

@test !isempty(CollegeFootballData.API.getGames(year=2020))
@test !isempty(CollegeFootballData.API.getTeamRecords(year=2020))
@test !isempty(CollegeFootballData.API.getGameMedia(year=2020))
@test !isempty(CollegeFootballData.API.getPlayerGameStats(year=2020, week=1))
@test !isempty(CollegeFootballData.API.getTeamGameStats(year=2020, week=1))
@test CollegeFootballData.API.getAdvancedBoxScore(gameId=401238035) !== nothing
@test !isempty(CollegeFootballData.API.getDrvies(year=2020))
@test !isempty(CollegeFootballData.API.getPlays(year=2020, week=1))
@test !isempty(CollegeFootballData.API.getPlayTypes())
@test !isempty(CollegeFootballData.API.getPlayStats(year=2020))
@test !isempty(CollegeFootballData.API.getPlayStatTypes())
@test !isempty(CollegeFootballData.API.getConferences())
@test !isempty(CollegeFootballData.API.getTeams())
@test !isempty(CollegeFootballData.API.getFbsTeams())
@test !isempty(CollegeFootballData.API.getRoster(year=2020, team="Oklahoma"))
@test !isempty(CollegeFootballData.API.getTalent(year=2020))
@test CollegeFootballData.API.getTeamMatchup(team1="Oklahoma", team2="Iowa State") !== nothing
@test !isempty(CollegeFootballData.API.getVenues())
@test !isempty(CollegeFootballData.API.getCoaches(year=2020))
@test !isempty(CollegeFootballData.API.getRankings(year=2020))
@test !isempty(CollegeFootballData.API.getLines(year=2020))
@test !isempty(CollegeFootballData.API.getRecruitingPlayers(year=2020))
@test !isempty(CollegeFootballData.API.getRecruitingTeams(year=2020))
@test !isempty(CollegeFootballData.API.getRecruitingGroups())
@test !isempty(CollegeFootballData.API.getSPRatings(year=2020))
@test !isempty(CollegeFootballData.API.getSRSRatings(year=2019))
@test !isempty(CollegeFootballData.API.getConferenceSPRatings(year=2020))
@test !isempty(CollegeFootballData.API.getPredictedPoints(down=1, distance=10))
@test !isempty(CollegeFootballData.API.getTeamPPA(year=2020))
@test !isempty(CollegeFootballData.API.getGamePPA(year=2020))
@test !isempty(CollegeFootballData.API.getPlayerGamePPA(year=2020, team="Oklahoma"))
@test !isempty(CollegeFootballData.API.getPlayerSeasonPPA(year=2020))
@test !isempty(CollegeFootballData.API.getWinProbabilityData(gameId=401238035))
@test !isempty(CollegeFootballData.API.getPregameWinProbabilities(year=2020))
@test !isempty(CollegeFootballData.API.getTeamSeasonStats(year=2020))
@test !isempty(CollegeFootballData.API.getAdvancedTeamSeasonStats(year=2020))
@test !isempty(CollegeFootballData.API.getAdvancedTeamGameStats(year=2020))
@test !isempty(CollegeFootballData.API.getStatCategories())
@test !isempty(CollegeFootballData.API.playerSearch(searchTerm="Rattler"))
@test !isempty(CollegeFootballData.API.getPlayerUsage(year=2020))
@test !isempty(CollegeFootballData.API.getReturningProduction(year=2020))
@test !isempty(CollegeFootballData.API.getPlayerSeasonStats(year=2020))

end # @testset "API endpoints"