//
//  ContentView.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var library = ExerciseLibrary()
    var body: some View {
        NavigationStack {
            VStack {
                List(library.exercises) { exercise in
                    Text(exercise.name)}
            }
            Button("Add Exercise") {
                library.exercises.append(Exercise(name: "New Exercise"))
                print("Added Exercise. Count: \(library.exercises.count)")
            }
        }
    }
}

#Preview {
    ContentView()
}

