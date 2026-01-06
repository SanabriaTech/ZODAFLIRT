//
//  ZODAFLIRTApp.swift
//  ZODAFLIRT
//
//  Created by Charles R. Skaar on 1/6/26.
//

import SwiftUI
import CoreData

@main
struct ZODAFLIRTApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
