//
//  WorkoutSession.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/10/25.
//

import Foundation

struct WorkoutSession: Identifiable {
    let id: UUID
    let workoutId: UUID
    let setsCompleted: [ExerciseSet]
    let startTime: Date
}
