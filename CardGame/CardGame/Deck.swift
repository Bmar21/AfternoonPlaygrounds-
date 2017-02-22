//
//  Deck.swift
//  CardGame
//
//  Created by Marlor, Brandon on 10/31/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import Foundation

class Deck
{
    internal lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        //Create a temp variable to hold Cards.
        var tempDeck = [Card]()
        
        //Repeat until cards data memeber is empty.
        while self.cards.count > 0
        {
            //Get a random number between 0...cards.count-1
            let randomIndex = Int (arc4random() % (UInt32)(cards.count))
            
            //Remove the card at that index from the deck
            let removedCard = cards.remove(at: randomIndex)
            
            //Place that card in the temporary array
            tempDeck.append(removedCard)
        }
        
        //Replace the data memeber with the updated date .
        self.cards = tempDeck
    }
    
    func cutDeck() -> Void
    {    }
    
    func drawCard() -> Card?
    {
        if cards.count > 0
        {
            return cards.remove(at: 0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card?
    {
        if cards.count > 0
        {
            let randomIndex = Int (arc4random() % (UInt32)(cards.count))
            return cards.remove(at: randomIndex)
        }
        else
        {
            return nil
        }
    }
}
