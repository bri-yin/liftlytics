//
//  ExerciseSet.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/10/25.
//

import Foundation

struct ExerciseSet: Identifiable {
    let id: UUID
    var weight: Double
    var reps: Int
    let timestamp: Date
    let exerciseId: UUID
    let workoutId: UUID
    
    init(id: UUID = UUID(), weight: Double, reps: Int, timestamp: Date = Date(), exerciseId: UUID, workoutId: UUID) {
        self.id = id
        self.weight = weight
        self.reps = reps
        self.timestamp = timestamp
        self.exerciseId = exerciseId
        self.workoutId = workoutId
    }
}
