//
//  LiftlyticsApp.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import SwiftUI

@main
struct LiftlyticsApp: App {
    @StateObject var dataManager = DataManager()
    
    var body: some Scene {
        WindowGroup {
                ContentView()
                    .environmentObject(dataManager.exerciseLibrary)
                    .environmentObject(dataManager.workoutHistory)
                    .environmentObject(dataManager.workoutLibrary)
                    .environmentObject(dataManager.setHistory)
        }
    }
}
