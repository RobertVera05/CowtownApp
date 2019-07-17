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
import AWSAppSync

class CommonFunctions
{
    static var appSyncClient: AWSAppSyncClient?
    
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
        appSyncClient?.fetch(query: ListTodosQuery(), cachePolicy: .returnCacheDataAndFetch) {(result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            result?.data?.listTodos?.items!.forEach { print(($0?.name)! + " " + ($0?.description)!) }
        }
    }
    
    ///Function to add a player to the aws database
    static func addPlayer(player: Player)
    {
        let mutationInput = CreateTodoInput(name: "Use AppSync", description:"Realtime and Offline")
        appSyncClient?.perform(mutation: CreateTodoMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
        }
    }
}
