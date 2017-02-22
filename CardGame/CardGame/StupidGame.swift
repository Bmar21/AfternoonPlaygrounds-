//
//  StupidGame.swift
//  CardGame
//
//  Created by Marlor, Brandon on 11/15/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

class StupidGame
{
    internal var gameDeck : PlayingCardDeck
    internal var hand : [PlayingCard]
    internal var score : Int
    
    init()
    {
        gameDeck = PlayingCardDeck()
        hand = [PlayingCard]()
        score = Int(0)
    }
    
    func startGame() -> Void
    {
        gameDeck.shuffleDeck()
        drawCards()
    }
    
    fileprivate func drawCards() -> Void
    {
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
        hand.append((gameDeck.drawCard() as? PlayingCard)!)
    }
    
    func checkMatch() -> Bool
    {
        let hasMatch :Bool
        if(hand[0].rank == hand[1].rank) || (hand[0].color == hand[1].color)
        {
            hasMatch = true
        }
        else
        {
            hasMatch = false
        }
        return hasMatch
    }
    
    func playGame() -> Void
    {
        if hand[0].rank > 5
        {
            score += hand[0].rank
        }
        else
        {
            score -= 10
        }
        hand.remove(at: 0) 
        drawCards()
    }

}

