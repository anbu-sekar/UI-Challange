//
//  UITaskApp.swift
//  Shared
//
//  Created by Anbusekar Murugesan on 25/12/2021.
//

import SwiftUI

@main
struct UITaskApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
