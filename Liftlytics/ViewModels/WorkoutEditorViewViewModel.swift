//
//  WorkoutEditorViewViewModel.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import Foundation

class WorkoutEditorViewViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var exercises: [Exercise] = []
    
    private let exerciseLibrary: ExerciseLibrary
    private let workoutLibrary: WorkoutLibrary
    private let workout: Workout?
    
    // Initializer for viewmodel
    init(workout: Workout? = nil, exerciseLibrary: ExerciseLibrary, workoutLibrary: WorkoutLibrary) {
        self.workout = workout
        self.exerciseLibrary = exerciseLibrary
        self.workoutLibrary = workoutLibrary
        
        // If workout exists, set up with workout name and list of exercises
        if let workout = workout {
            self.title = workout.name
            self.exercises = workout.exerciseIDs.compactMap { id in
                exerciseLibrary.exercises.first {$0.id == id}
            }
            // If not create new empty workout
        } else {
            self.title = ""
        }
    }
    
    // Exercise must have a name, it will check if the name exists and add it to exerciselibrary if not, if it does already have a match then just add the exercise from the exercisename to this workout
    func addExercise(name: String) {
        // Validate name
        if let existingExercise = exerciseLibrary.exercises.first(where: {$0.name == name}) {
            exercises.append(existingExercise)
        } else {
            let newExercise = Exercise(name: name)
            exerciseLibrary.add(newExercise)
            exercises.append(newExercise)
        }
    }
    
    func removeExercise() {
        
    }
    
    // To save the workout, it has to put it into library with the name and the exercises in the workout tbh.
    func saveWorkout() {
        let exerciseIDs = exercises.map { $0.id }
        
        if let existingWorkout = workout {
            let updatedWorkout = Workout(
                id: existingWorkout.id,
                name: title,
                exerciseIDs: exerciseIDs
            )
            workoutLibrary.update(updatedWorkout)
        } else {
            let newWorkout = Workout(name: title, exerciseIDs: exerciseIDs)
            workoutLibrary.add(newWorkout)
        }
    }
}
