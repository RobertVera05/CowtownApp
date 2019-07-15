//
//  FreeAgents.swift
//  CowtownApp
//
//  Created by Robert Vera on 4/19/18.
//  Copyright © 2018 Robert.Vera05. All rights reserved.
//

import Foundation

class FreeAgents: NSObject {
    private var freeAgents: [Player]
    
    override init() {
        freeAgents = [Player]()
    }
    
    func addFreeAgent(freeAgent: Player) {
        if !freeAgents.contains(freeAgent)
        {
            freeAgents.append(freeAgent)
        }
        else
        {
            //TODO: Throw an error message saying that
            //the user is already in the free agents list
            //CommonFunctions.displayError(alertTitle: "Player Exists", alertMessage: "", viewController: )
        }
    }
    
    func removeFreeAgent(freeAgent: Player) {
        let position = freeAgents.firstIndex(of: freeAgent)
        freeAgents.remove(at: position!)
    }
    
}
