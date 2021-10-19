//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Atanas Kolev on 10.09.21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    private let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(game: game)
        }
    }
}
