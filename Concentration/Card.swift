//
//  Card.swift
//  Concentration
//
//  Created by Валерий Тихомиров on 31.08.2020.
//  Copyright © 2020 selfdev. All rights reserved.
//

import Foundation

struct Card: Hashable {
    
    var hashValue: Int { return id }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.id == rhs.id
    }
    
    private var id: Int
    var isFaceUp = false
    var isMatched = false
    
    private static var idFactory = 0
    
    private static func getUniqueId() -> Int {
        idFactory += 1
        return idFactory
    }
    
    init() {
        id = Card.getUniqueId()
    }
}
