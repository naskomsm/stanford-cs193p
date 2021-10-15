//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Atanas Kolev on 15.10.21.
//

import SwiftUI

class EmojiMemoryGame {
    static let emojis = ["🚗", "🚕", "🚙", "🚌",
                         "🚎", "🏎", "🚓", "🚑",
                         "🚒", "🚐", "🛻", "🚚",
                         "🚛", "🚜", "🛴", "🚲",
                         "🛵", "🏍", "🛺" , "🚔",
                         "🚍", "🚘", "🚖", "✈️"]
    
    static func createMemoryGame() ->MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex] }
    }
    
    private var model: MemoryGame<String> = createMemoryGame()
    
    var cars: Array<MemoryGame<String>.Card>{
        return model.cards
    }
}
