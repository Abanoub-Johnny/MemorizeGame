//
//  ContentView.swift
//  Memorize
//
//  Created by Abanoub on 7/24/20.
//  Copyright © 2020 Abanoub. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{ForEach(0..<4){ index in
            CardView(text: "👻")
            }
        }.foregroundColor(Color.orange)
        .padding(20.0)
        .font(Font.largeTitle)
    }
}

struct CardView:View {
    var text:String
    var isFaceUp = false
    var body: some View {
        ZStack{
            if isFaceUp{
            RoundedRectangle(cornerRadius: 20.0).stroke(lineWidth: 3.0)
                    .background(Rectangle().foregroundColor(.white))
            Text(text)
            }else{
                RoundedRectangle(cornerRadius: 20.0).fill()
            }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
