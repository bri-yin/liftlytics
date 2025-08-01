//
//  WorkoutSet.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import Foundation

struct WorkoutSet: Identifiable {
    let id = UUID()
    let exercise = Exercise(normalizedName: "", displayName: "", createdDate: Date())
    let reps: Int
    let weight: Double
    let isCompleted: Bool
}
