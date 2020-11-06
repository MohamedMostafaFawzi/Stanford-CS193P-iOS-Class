//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Mohamed Canaria on 10/20/20.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            let game = EmojiMemoryGame()
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
