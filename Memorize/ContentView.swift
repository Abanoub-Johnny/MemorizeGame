//
//  ContentView.swift
//  Memorize
//
//  Created by Abanoub on 7/24/20.
//  Copyright © 2020 Abanoub. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var memryGame: EmojiMemoryGame
  
  var body: some View {
    HStack{ForEach(memryGame.cards){ card in
      CardView(card:card).onTapGesture {
        self.memryGame.choose(card: card)}
      }
    }.foregroundColor(Color.orange)
    .padding(20.0)
    .font(Font.largeTitle)
  }
}

struct CardView:View {
  var card :MemoryGame<String>.Card
  var body: some View {
    ZStack{
      if card.isFacedUp{
        RoundedRectangle(cornerRadius: 20.0).stroke(lineWidth: 3.0)
          .background(Rectangle().foregroundColor(.white))
        Text(card.text)
      }else{
        RoundedRectangle(cornerRadius: 20.0).fill()
      }
    }
  }
}






struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(memryGame:EmojiMemoryGame())
  }
}
