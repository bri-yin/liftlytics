//
//  WorkoutEditorView.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

/*
 The way that this will work is that it will display a plus button, and users can add a exercise to a workout.
 
 Top of the screen will be editable workout name
 
 
 Plus -> Add exercise -> Fill in exercise name
 */

import SwiftUI

struct WorkoutEditorView: View {
    @StateObject var viewModel = HomeViewViewModel()
    var body: some View {
        NavigationView {
            // VStack
            VStack {
                // Title
                Text("Liftlytics")
                    .font(.largeTitle)
                    .bold()
                
                // Button to start workout
                NavigationLink(destination: WorkoutView()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(Color.accentColor.opacity(0.4))
                            .frame(width: 200, height: 100)
                        
                        VStack(spacing: 20) {
                            Text("Start Workout")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                        }
                    }
                }
                List
            }
        }
    }
}

#Preview {
    WorkoutEditorView()
}
