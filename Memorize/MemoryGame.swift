//
//  MemoryGame.swift
//  Memorize
//
//  Created by Abanoub on 7/28/20.
//  Copyright © 2020 Abanoub. All rights reserved.
//

import Foundation

struct MemoryGame<CardContent>{
  var cards: Array<Card>
  
  init(numberOfPairs : Int, cardContentFactory: (Int) -> CardContent) {
    cards = Array<Card>()
    for pairIndex in 0..<numberOfPairs {
      cards.append(Card(text: cardContentFactory(pairIndex), id: pairIndex*2))
      cards.append(Card(text: cardContentFactory(pairIndex), id: pairIndex*2+1))
    }
    self.cards.shuffle()
  }
  mutating func choose(card: Card)  {
    let choosenIndex:Int = self.indexOf(of: card)
    self.cards[choosenIndex].isFacedUp = !self.cards[choosenIndex].isFacedUp
    print("card choosen \(self.cards[choosenIndex])")
  }
  
  func indexOf(of card:Card) -> Int {
    for index in 0..<self.cards.count{
      if self.cards[index].id == card.id {
        return index
      }
    }
    return 0 //TODO: bogus!
  }
  
  struct Card: Identifiable{
    var text :CardContent
    var isFacedUp = false
    var isMatched = false
    var id:Int
    
  }
}
