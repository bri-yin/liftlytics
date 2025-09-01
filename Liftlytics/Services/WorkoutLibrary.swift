//
//  WorkoutLibrary.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/9/25.
//

import Foundation

class WorkoutLibrary: ObservableObject {
    @Published var workouts: [Workout] = []
    let exerciseLibrary: ExerciseLibrary
    
    init(exerciseLibrary: ExerciseLibrary) {
        self.exerciseLibrary = exerciseLibrary
    }
    
    // Defining a function, takes in a workout, produces an array of exercises
    func getExercises(for workout: Workout) -> [Exercise] {
        // CompactMap to loop through a workout's exerciseIDs
        workout.exerciseIDs.compactMap { id in
            // Goes through the exercise library and for the first
            // match of workout.exercise.IDs current, return the exercise where ID matches
            exerciseLibrary.exercises.first { exercise in
                id == exercise.id
            }
        }
    }
    
    func add(_ workout : Workout) {
        workouts.append(workout)
    }
    
    func update(_ workout : Workout) {
        if let index = workouts.firstIndex(where: { $0.id == workout.id }) {
            workouts[index] = workout
        }
    }
}
