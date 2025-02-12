//
//  MemorywithgithubApp.swift
//  Memorywithgithub
//
//  Created by wangyaomacmini on 2025/2/13.
//

import SwiftUI

@main
struct MemorywithgithubApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var game = EmojiMemoryGame()

    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
