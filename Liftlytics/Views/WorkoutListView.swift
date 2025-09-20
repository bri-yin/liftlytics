//
//  WorkoutListView.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import SwiftUI

// The purpose of this view is to provide the user a list of current created workout templates with the option to edit existing templates or create another template

struct WorkoutListView: View {
    @StateObject var viewModel = WorkoutListViewViewModel()
    @EnvironmentObject var exerciseLibrary: ExerciseLibrary
    @EnvironmentObject var workoutLibrary: WorkoutLibrary

    var body: some View {
        NavigationStack {
            List(workoutLibrary.workouts) { workout in
                NavigationLink(value: workout) {
                    Text(workout.name)
                }
            }
            .navigationDestination(for: Workout.self) { workout in
                RunWorkoutView(workout: workout)
                    .onAppear { print("Dest appeared for:", workout.name) }
            }
            .navigationTitle("Workouts")
            .toolbar {                             
                NavigationLink {
                    WorkoutEditorView(
                        exerciseLibrary: exerciseLibrary,
                        workoutLibrary: workoutLibrary
                    )
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}


#Preview {
    PreviewRoot {WorkoutListView()}
}
