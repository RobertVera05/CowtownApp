//
//  Common.swift
//  List of functions that can be used across the app.
//  CowtownApp
//
//  Created by Robert Vera on 6/29/18.
//  Copyright © 2018 Robert.Vera05. All rights reserved.
//

import Foundation
import GameplayKit
import UIKit

class CommonFunctions
{
    
    static func displayError(alertTitle: String, alertMessage: String, viewController: ViewController)
    {
        let alertController = UIAlertController(title: alertTitle,
                                                message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertAction.Style.default,
                                                handler: nil))
        viewController.present(alertController, animated: true, completion: nil)
    }
    
    /// Function that generates a random number using the parameter int as a boundary. Int can be null,
    /// you will receive a number without bound.
    static func randomNumber(boundary: Int) -> Int
    {
        let randomNumber = GKRandomSource.sharedRandom()
        return randomNumber.nextInt(upperBound: boundary)
    }
    
    ///Function that takes an array of matches and swaps out positions inside of the matches array using random numbers for positions
    static func rearrangeRandomMatches(matches: inout [Match]) -> [Match]
    {
        for _ in 0...matches.count
        {
            matches.swapAt(randomNumber(boundary: matches.count), randomNumber(boundary: matches.count))
        }
        
        return matches
    }
    
    static func addUserToDatabase()
    {
        
    }
    
    ///Function to query a player's information from the aws database
    static func queryPlayer(player: Player)
    {
        
    }
    
    ///Function to add a player to the aws database
    static func addPlayer(player: Player)
    {
        
    }
    
    ///Function to remove a player from the aws database
    static func removePlayer(player: Player)
    {
        
    }
    
    //Function to verify user's credentials to the app
    static func authenticatePlayer(username: String, password: String)
    {
        
    }
}
