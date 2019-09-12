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
import FirebaseAuth

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
    
    ///Function to add a player to the firebase database
    static func addNewUser(email: String, password: String)
    {
        Auth.auth().createUser(withEmail: email, password: password, completion: nil)
    }
    
    ///Function to sign in a player into the firebase database
    static func signInUser(email: String, password: String)
    {
        Auth.auth().signIn(withEmail: email, password: password, completion: nil)
    }
    
    ///Function to sign out a player from the firebase database
    static func signOutUser()
    {
        let firebaseAuth = Auth.auth()
        do
        {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError
        {
            print("Error signing out: %@", signOutError)
        }
    }
}
