//
//  WorkoutEditorView.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/23/25.
//

import SwiftUI

// Idea behind this view is to have current workouts be editable and new workouts are created here. So this has to take in a current workout, and have another option be creating a new workout.
struct WorkoutEditorView: View {
    @StateObject private var viewModel: WorkoutEditorViewViewModel
    
    init(workout: Workout? = nil, exerciseLibrary: ExerciseLibrary, workoutLibrary: WorkoutLibrary) {
        _viewModel = StateObject(wrappedValue: WorkoutEditorViewViewModel(
            workout: workout,
            exerciseLibrary: exerciseLibrary,
            workoutLibrary: workoutLibrary))
    }
    @FocusState private var isFocused: Bool
    @State private var showingAddExercise = false
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Workout Name", text: $viewModel.title)
                .font(.largeTitle.bold())
                .focused($isFocused)
                .multilineTextAlignment(.center)
                .padding(.top, 40)
            Spacer()
            
            ZStack {
                List {
                    Section(header: Text("Exercises")) {
                        ForEach(viewModel.exercises) { exercise in
                            Text(exercise.name)
                        }
                    }
                }
                .background(.clear)
                .scrollContentBackground(.hidden)
            }
            
            Button {
                showingAddExercise = true
            } label: {
                ZStack {
                    VStack(spacing: 20) {
                        Text("Add Exercise")
                            .font(.system(size: 20))
                    }
                }
            }
        }
        .sheet(isPresented: $showingAddExercise) {
            AddExerciseForm { name in
                viewModel.addExercise(name: name)
            }
            .presentationDetents([.fraction(0.25)])
            .presentationDragIndicator(.visible)
            .interactiveDismissDisabled(false)
        }
        .navigationTitle("New Workout")
        .onDisappear {
            viewModel.saveWorkout()
        }
    }
}

#Preview {
    PreviewRoot{WorkoutEditorView(
        exerciseLibrary: ExerciseLibrary(),
        workoutLibrary: WorkoutLibrary(exerciseLibrary: ExerciseLibrary()))
    }
}
