//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Abanoub on 7/28/20.
//  Copyright © 2020 Abanoub. All rights reserved.
//

import Foundation

class EmojiMemoryGame {
  //private(set): means no one uses the class can update the game model while they all can read the model
  private(set) var game:MemoryGame<String> = createMemoryGame()
  
  static func createMemoryGame() -> MemoryGame<String> {
    let emojis: Array<String> = ["👻","🤓","👌"]
    return MemoryGame<String>(numberOfPairs : emojis.count) {pairIndex in
      return emojis[pairIndex]
    }
  }
  
  //MARK: - ACCESS to the Model
  
  var cards : Array<MemoryGame<String>.Card>{
    return game.cards
  }
  // MARK: -Intent(s)
  
  func choose(card:MemoryGame<String>.Card) {
    game.choose(card:card)
  }
}
