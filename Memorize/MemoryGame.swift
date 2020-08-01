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
      let card = Card(text: cardContentFactory(pairIndex), id: pairIndex)
      cards.append(card)
      cards.append(card)
    }
  }
  func choose(card: Card)  {
    print("card choosen \(card)")
  }
  
  struct Card: Identifiable{
    var text :CardContent
    var isFacedUp = true
    var isMatched = false
    var id:Int
    
  }
}
