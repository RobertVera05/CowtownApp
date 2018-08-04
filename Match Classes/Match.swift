//
//  Match.swift
//  CowtownApp
//
//  Created by Robert Vera on 4/18/18.
//  Copyright © 2018 Robert.Vera05. All rights reserved.
//

import Foundation

class Match: NSObject {
    private var homeTeam: Team
    private var awayTeam: Team
    private var referee: Referee
    private var homeScore: Int
    private var awayScore: Int
    private var scheduledDate: NSDate
    private var isCanceled: Bool
    
    init(homeTeam: Team, awayTeam: Team, referee: Referee, scheduledDate: NSDate) {
        self.homeTeam = homeTeam
        self.awayTeam = awayTeam
        self.referee = referee
        self.scheduledDate = scheduledDate
        self.homeScore = 0
        self.awayScore = 0
        self.isCanceled = false
    }
    
    func getHomeTeam() -> Team {
        return homeTeam
    }
    
    func setHomeTeam(homeTeam: Team) {
        self.homeTeam = homeTeam
    }
    
    func getAwayTeam() -> Team{
        return awayTeam
    }
    
    func setAwayTeam(awayTeam: Team) {
        self.awayTeam = awayTeam
    }
    
    func getReferee() -> Referee {
        return referee
    }
    
    func setReferee(referee: Referee) {
        self.referee = referee
    }
    
    func getHomeScore() -> Int {
        return homeScore
    }
    
    func addHomeScore() {
        homeScore += 1
    }
    
    func getAwayScore() -> Int {
        return awayScore
    }
    
    func addAwayScore() {
        awayScore += 1
    }
    
    func getScheduledDate() -> NSDate {
        return scheduledDate
    }
    
    func setScheduledDate(scheduledDate: NSDate) {
        self.scheduledDate = scheduledDate
    }
    
    func getIsCanceled() -> Bool {
        return isCanceled
    }
    
    func setIsCanceled(isCanceled: Bool) {
        self.isCanceled = isCanceled
    }
}
