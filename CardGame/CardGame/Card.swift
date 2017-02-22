//
//  Card.swift
//  CardGame
//
//  Created by Marlor, Brandon on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class Card
{
    internal var isFaceUp : Bool

    init()
    {
        isFaceUp = false
    }
    
    func setFacing(_ isFaceUp : Bool)
    {
        self.isFaceUp = isFaceUp
    }
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func toString () -> String
    {
        let description = "This cards \(isFaceUp)"
        
        return description
    }

}
