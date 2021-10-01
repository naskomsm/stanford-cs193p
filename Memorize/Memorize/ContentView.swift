//
//  ContentView.swift
//  Memorize
//
//  Created by Atanas Kolev on 10.09.21.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["🚗", "🚕", "🚙", "🚌",
                  "🚎", "🏎", "🚓", "🚑",
                  "🚒", "🚐", "🛻", "🚚",
                  "🚛", "🚜", "🛴", "🚲",
                  "🛵", "🏍", "🛺" , "🚔",
                  "🚍", "🚘", "🚖", "✈️"]
    
    @State var emojiCount = 4
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }
            
            HStack {
                Button(action: {
                    emojiCount -= 1
                }, label: {
                    VStack {
                        Text("Remove")
                        Text("Card")
                    }
                })
                
                Button(action: {
                    emojiCount += 1
                }, label: {
                    VStack {
                        Text("Add")
                        Text("Card")
                    }
                })
            }
        }
        .padding(.horizontal)
        .foregroundColor(.red)
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 30)
            
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content).font(.largeTitle)

            } else {
                shape.fill()
            }
        }.onTapGesture{
            isFaceUp = !isFaceUp
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
    }
}
