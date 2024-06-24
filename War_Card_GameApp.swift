//
//  War_Card_GameApp.swift
//  War Card Game
//
//  Created by Temisan Taire on 4/17/24.
//

import SwiftUI

@main
struct War_Card_GameApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
