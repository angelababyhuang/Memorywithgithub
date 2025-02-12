//
//  EmojiMemoryGame.swift
//  Memorywithgithub
//
//  Created by wangyaomacmini on 2025/2/13.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    private static let emojis = ["👻", "👽", "👾", "👿", "💩", "🤖", "🤡", "🥶", "🥵", "🥴", "🤯", "🤠", "🤡", "🥶", "🥵", "🥴", "🤯", "🤠"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsOfCards: 8) { pairIndex in
            if emojis.indices.contains(pairIndex){
                emojis[pairIndex]
            } else {
                "!?"
            }
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: -Intents
    var color: Color {
        .orange
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }
}
