//
//  Team.swift
//  CowtownApp
//
//  Created by Robert Vera on 4/18/18.
//  Copyright © 2018 Robert.Vera05. All rights reserved.
//

import Foundation

class Team: NSObject {
    private var teamName: NSString
    private var roster: [Player]
    private var suspendedPlayers: [Player]?
    private var teamCaptain: Player
    private var jerseyColorHome: NSString
    private var jerseyColorAway: NSString
    private var division: NSString
    private var gamesPlayed: Int
    private var wins: Int
    private var losses: Int
    private var ties: Int
    private var points: Int
    private var activeTeam: Bool
    private var goalsFor: Int
    private var goalsAgainst: Int
    private var goalDifferential: Int
    
    init(teamName: NSString, teamCaptain: Player, jerseyColorHome: NSString,
         jerseyColorAway: NSString, division: NSString) {
        self.teamName = teamName
        self.roster = [Player]()
        self.teamCaptain = teamCaptain
        self.jerseyColorHome = jerseyColorHome
        self.jerseyColorAway = jerseyColorAway
        self.division = division
        self.wins = 0
        self.losses = 0
        self.ties = 0
        self.points = 0
        self.activeTeam = true
        self.gamesPlayed = 0
        self.goalsFor = 0
        self.goalsAgainst = 0
        self.goalDifferential = 0
    }
    
    func getWins() -> Int {
        return wins
    }
    
    func addWin() {
        wins += 1
        points += 3
        gamesPlayed += 1
    }
    
    func getLosses() -> Int {
        return losses
    }
    
    func addLoss() {
        losses += 1
        gamesPlayed += 1
    }
    
    func getTies() -> Int {
        return ties
    }
    
    func addTie() {
        ties += 1
        points += 1
        gamesPlayed += 1
    }
    
    func resetAllStats() {
        wins = 0
        losses = 0
        ties = 0
        points = 0
        gamesPlayed = 0
        goalsFor = 0
        goalsAgainst = 0
        goalDifferential = 0
    }
    
    func getGamesPlayed() -> Int {
        return gamesPlayed
    }
    
    func getJeryseyColorHome() -> NSString {
        return jerseyColorHome
    }
    
    func setJerseyColorHome(jerseyColorHome: NSString) {
        self.jerseyColorHome = jerseyColorHome
    }
    
    func getJerseyColorAway() -> NSString {
        return jerseyColorAway
    }
    
    func setJerseyColorAway(jerseyColorAway: NSString) {
        self.jerseyColorAway = jerseyColorAway
    }
    
    func getPoints() -> Int {
        return points
    }
    
    //This function is called when a team is disqualified,
    //points are removed from their total points
    func removePoints() {
        points -= 3
    }
    
    func isActive() -> Bool {
        return activeTeam
    }
    
    func deactivateTeam() {
        activeTeam = false
    }
    
    func getRosterSize() -> Int {
        return roster.count
    }
    
    func addPlayer(player: Player) {
        roster.append(player)
    }
    
    func removePlayer(player: Player) {
        let playerPosition = roster.index(of: player)
        roster.remove(at: playerPosition!)
    }
    
    func addSuspendedPlayer(suspendedPlayer: Player) {
        suspendedPlayers?.append(suspendedPlayer)
    }
    
    func removeSuspendedPlayer(suspendedPlayer: Player) {
        let playerPosition = suspendedPlayers?.index(of: suspendedPlayer)
        roster.remove(at: playerPosition!)
    }
    
    func isPlayerSuspended(player: Player) -> Bool {
        if(suspendedPlayers!.contains(player)){
            return true
        }
        else{
            return false
        }
    }
    
    func getGoalsFor() -> Int {
        goalsFor = 0
        
        for player in roster{
            goalsFor += player.getGoalsScored()
        }
        
        return goalsFor
    }
    
    func getGoalsAgainst() -> Int {
        return goalsAgainst
    }
    
    func setGoalsAgainst(goalsAgainst: Int) {
        self.goalsAgainst = goalsAgainst
    }
    
    func getGoalDifferential() -> Int {
        return goalsFor - goalsAgainst
    }
    
    func setDivision(division: NSString) {
        self.division = division
    }
    
    func getDivision() -> NSString {
        return division
    }
    
    func setName(teamName: NSString)
    {
        self.teamName = teamName
    }
    
    func getName() -> NSString
    {
        return teamName
    }
}
