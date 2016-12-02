//
//  CardGameController.swift
//  CardGame
//
//  Created by Marlor, Brandon on 10/27/16.
//  Copyright © 2016 CTEC. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    private lazy var clickCount = Int()
    private lazy var cardDeck = PlayingCardDeck()
    
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    
    
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString)
    }
    
    @IBAction func cardClick(sender: UIButton)
    {
        clickCount += 1
        
        let content = "You clicked \(clickCount) times"
        
        if let currentCard = cardDeck.drawRandomCard() as? PlayingCard
        {
            cardButton.setTitle("\(currentCard.getCardData())", forState:
                UIControlState.Normal)
        }
        else
        {
            cardButton.setTitle("deck over", forState: UIControlState.Normal)
            cardDeck = PlayingCardDeck()
        }
        
        cardLabel.text = content 
    }
    
    
    
}
