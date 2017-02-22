//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Marlor, Brandon on 10/31/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank <= PlayingCard.maxRank(); rank += 1
            {
//                let tempCard = PlayingCard()
//                tempCard.rank = rank
//                tempCard.suit = suit
                let tempCard = PlayingCard(withRank: rank, ofSuit: suit)
                cards.append(tempCard)
            }
        }
    }
    
    func orderDeck() -> Void
    {
        var temp = [PlayingCard]()
        for suit in PlayingCard.validSuits()
        {
            for var rank = 1; rank <= PlayingCard.maxRank(); rank += 1
            {
                let index = cards.index(
                    where: {($0 as! PlayingCard).suit == suit && ($0 as! PlayingCard).rank == rank})
                let tempCard = cards.remove(at: index!) as! PlayingCard
                temp.append(tempCard)
            }
        }
        
        cards = temp
    }
    
    
}
