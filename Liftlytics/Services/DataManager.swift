//
//  DataManager.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/10/25.
//

import Foundation

class DataManager: ObservableObject {
    let setHistory: SetHistory
    let workoutHistory: WorkoutHistory
    let exerciseLibrary: ExerciseLibrary
    let workoutLibrary: WorkoutLibrary
    
    init() {
        self.exerciseLibrary = ExerciseLibrary()
        self.workoutLibrary = WorkoutLibrary(exerciseLibrary: self.exerciseLibrary)
        self.setHistory = SetHistory()
        self.workoutHistory = WorkoutHistory()
    }
}
