//
//  Table.swift
//  CowtownApp
//
//  Created by Robert Vera on 7/1/18.
//  Copyright © 2018 Robert.Vera05. All rights reserved.
//

import Foundation

class Table: NSObject {
    private var wins: Int
    private var losses: Int
    
    init(wins: Int, losses: Int)
    {
        self.wins = wins
        self.losses = losses
    }
}
