//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Abanoub on 7/28/20.
//  Copyright © 2020 Abanoub. All rights reserved.
//

import Foundation

class EmojiMemoryGame: ObservableObject {
  //private(set): means no one uses the class can update the game model while they all can read the model
  @Published private var game:MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
  
  static func createMemoryGame() -> MemoryGame<String> {
    let emojis: Array<String> = ["👻","🤓","👌","🧠","👅","🧛‍♂️"]
    return MemoryGame<String>(numberOfPairs : Int.random(in: 2..<6)) {pairIndex in
      return emojis[pairIndex]
    }
  }
  
  //MARK: - ACCESS to the Model
  
  var cards : Array<MemoryGame<String>.Card>{
    game.cards
  }
  // MARK: -Intent(s)
  
  func choose(card:MemoryGame<String>.Card) {
    game.choose(card:card)
  }
}
