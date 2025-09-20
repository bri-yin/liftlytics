//
//  PreviewRoot.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/23/25.
//

import Foundation
import SwiftUI

struct PreviewRoot<Content: View>: View {
    let content: () -> Content
    @StateObject private var dataManager = DataManager()
    var body: some View {
        content()
            .environmentObject(dataManager.exerciseLibrary)
            .environmentObject(dataManager.workoutHistory)
            .environmentObject(dataManager.workoutLibrary)
            .environmentObject(dataManager.setHistory)
    }
}

