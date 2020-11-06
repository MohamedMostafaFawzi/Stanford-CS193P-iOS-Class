//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mohamed Canaria on 10/23/20.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "🎃", "🕷", "👺", "👹"]
        let random = Int.random(in: 1..<emojis.count)
        return MemoryGame<String>(numberOfPairsOfCards: random) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // MARK:- Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
