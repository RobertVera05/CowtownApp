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
            CommonFunctions.displayError(alertTitle: "", alertMessage: "", viewController: viewController)
        }
        
    }
    
    func removeTeam(team: Team)
    {
        let position = teams.index(of: team)
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
        let position = matches.index(of: match)
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
            for _ in 0...teams.count
            {
                //Select a random team for the home team
                let homeTeam = teams[CommonFunctions.randomNumber(boundary: teams.count)]
                //Remove the team from the teams array so that it cannot be selected again
                teams.remove(at: teams.index(of: homeTeam)!)
                //Select a random team for the away team
                let awayTeam = teams[CommonFunctions.randomNumber(boundary: teams.count)]
                
            }
        }
        
        return matches
    }
}
