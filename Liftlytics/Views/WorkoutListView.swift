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
        // Need a list of current workouts
        VStack {
            List {
                ForEach(workoutLibrary.workouts) { workout in
                    Text(workout.name)
                }
                
            }
        }
        .navigationTitle("List of Workouts")
        .toolbar {
            NavigationLink(destination: WorkoutEditorView(exerciseLibrary: exerciseLibrary, workoutLibrary: workoutLibrary)){
                Image(systemName: "plus")
            }
        }
    }
}

#Preview {
    PreviewRoot {WorkoutListView()}
}
