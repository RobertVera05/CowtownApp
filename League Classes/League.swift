//
//  League.swift
//  CowtownApp
//
//  Created by Robert Vera on 6/29/18.
//  Copyright © 2018 Robert.Vera05. All rights reserved.
//

import Foundation

class League: NSObject
{
    private var leagueName: NSString
    private var division: NSString
    private var teams: [Team]
    private var matches: [Match]
    private var season: NSString
    private var champion: Team?
    private var runnerUp: Team?
    private var referees: [Referee]?
    
    init(leagueName: NSString, division: NSString, season: NSString)
    {
        self.leagueName = leagueName
        self.teams = [Team]()
        self.matches = [Match]()
        self.division = division
        self.season = season
    }
    
    /**
    * Function adds team to teams list, but if
    * the team is in the list, do not add again
    */
    func addTeam(team: Team, viewController: ViewController)
    {
        if !teams.contains(team)
        {
            teams.append(team)
        }
        else
        {
            // display an alert to the user if the
            // team already exists in the league
            // have to do this from the viewcontroller in order to pass to common function
            CommonFunctions.displayError(alertTitle: "ERROR:", alertMessage: "Team has already been added to League.", viewController: viewController)
        }
        
    }
    
    func removeTeam(team: Team)
    {
        let position = teams.firstIndex(of: team)
        teams.remove(at: position!)
    }
    
    func removeAllTeams()
    {
        teams.removeAll()
    }
    
    func getAllMatches() -> [Match] {
        return matches
    }
    
    func addMatch(match: Match)
    {
        matches.append(match)
    }
    
    func removeMatch(match: Match)
    {
        let position = matches.firstIndex(of: match)
        matches.remove(at: position!)
    }
    
    func removeAllMatches()
    {
        matches.removeAll()
    }
    
    func getDivision() -> NSString
    {
        return division
    }
    
    func setDivision(division: NSString)
    {
        self.division = division
    }
    
    func getChampion() -> Team
    {
        return champion!
    }
    
    func setChampion(champion: Team)
    {
        self.champion = champion
    }
    
    func getRunnerUp() -> Team
    {
        return runnerUp!
    }
    
    func setRunnerUp(runnerUp: Team)
    {
        self.runnerUp = runnerUp
    }
    
    func getSeason() -> NSString
    {
        return season
    }
    
    func setSeason(season: NSString)
    {
        self.season = season
    }
    
    /**
    * This function takes all of the teams in the league and
    * ranks them first to last place
    */
    func getRankings() -> [Team]
    {
        let sortedRanks = teams.sorted(by: {$0.getPoints() > $1.getPoints()})
        return sortedRanks
    }
    
    /**
    * This function generates all of the matches for the league
    */
    func generateMatches() -> [Match]
    {
        if teams.capacity > 1 {
            // recursively go through each team and make them a match with every team, then randomize the games.
            for i in 0...teams.count
            {
                createMatches(team: teams[i])
            }
        }
        
        return matches
    }
    
    
    func createMatches(team: Team)
    {
        for awayTeam in teams
        {
            if team.getName() !== awayTeam.getName()
            {
                let match = Match.init(homeTeam: team, awayTeam: awayTeam,
                                       referee: referees![CommonFunctions.randomNumber(boundary: (referees?.count)!)], scheduledDate: NSDate.init())
                
                // add the match to the list of all matches for all teams
                matches.append(match)
            }
            
        }
    }
}
