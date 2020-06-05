//
//  CardModel.swift
//  MatchApp
//
//  Created by Fabio Italiano on 6/5/20.
//  Copyright © 2020 Alteryx. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
    
    // declare an empty array
      var generatedCards = [Card]()
        
    // randomly generate cards
      for _ in 1...8 {
            
        // generate a random number
        let randomNumber = Int.random(in: 1...13)
        
        // create two new card onjects
        let cardOne = Card()
        let cardTwo = Card()
        
        // set their image names
        cardOne.imageName = "card\(randomNumber)"
        cardTwo.imageName = "card\(randomNumber)"
        
        // add them to the array
        generatedCards += [cardOne, cardTwo]
        print(randomNumber)
        }
        
    // randomize cards in the array
    generatedCards.shuffle()
        
    // return an array
    return generatedCards
        
        
    }
    
}
