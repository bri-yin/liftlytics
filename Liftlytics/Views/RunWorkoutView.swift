//
//  RunWorkoutView.swift
//  Liftlytics
//
//  Created by Brian Yin on 9/5/25.
//

import SwiftUI

struct RunWorkoutView: View {
    @EnvironmentObject var workoutLibrary: WorkoutLibrary
    let workout: Workout
    var body: some View {
        VStack {
            List {
                ForEach(workoutLibrary.getExercises(for: workout)) { exercise in
                    Text(exercise.name)
                }
            }
            .onAppear {
                print("Running \(workout.name)")
            }
        }
    }
}

#Preview {
    let pushday = Workout(id: UUID(), name: "Push Day", exerciseIDs: [UUID()])
    PreviewRoot{RunWorkoutView(workout: pushday)}
}
