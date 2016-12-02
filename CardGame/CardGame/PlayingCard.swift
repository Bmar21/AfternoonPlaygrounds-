//
//  PlayingCard.swift
//  CardGame
//
//  Created by Marlor, Brandon on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    internal var rank : Int
    internal var suit : String
    internal var color : UIColor

    
    override init()
    {

        suit = ""
        color = UIColor()
        rank = 0
        super.init()
    }
    
    init(withRank: Int, ofSuit:String)
    {
        color = UIColor.redColor()
        suit = ofSuit
        rank = withRank
        
        super.init()
    }
    
    func getcolor() -> UIColor
    {
        return color
    }
    
    func getrank() -> Int
    {
        return rank
    }
    
    func getSuit() -> String
    {
        return suit
    }
    
    func getCardData() -> String
    {
        return "\(PlayingCard.validRanks()[rank]) \(suit)"
    }
    
    override func toString() -> String
    {
        let backStatus: String
        if super.isFacing()
        {
            backStatus = " is face up"
        }
        else
        {
            backStatus = " is face up"
        }
        
        let description = "This playing card ranks is: \(rank) and its suit is: \(suit). And it ahs a color of: \(color)  \(backStatus)"
        
        return description
    }
    
    //The class modifier makes it so the is visible without an instane
    //You would call it by ClassName.method()
    //In this case PlayingCard.validRanks()
    class func validRanks() -> [String]
    {
        return ["??","A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♠️","♥️","♣️","♦️"]
    }
    
}
