//
//  LiftlyticsApp.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import SwiftUI

@main
struct LiftlyticsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    print("✅ ContentView appeared")
                }
        }
    }
    
    init() {
        
    }
}
