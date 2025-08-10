//
//  HomeView.swift
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

struct HomeView: View {
    @StateObject var viewModel = HomeViewViewModel()
    var body: some View {
        
        // VStack
        /*VStack {
            // Title
            Text("Liftlytics")
                .font(.system(size: 60, design: .default))
                .bold()

            // Button to choose from workout toI start
            NavigationLink(destination: WorkoutListView()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.accentColor.opacity(0.4))
                        .frame(width: 300, height: 80)
                    
                    VStack(spacing: 20) {
                        Text("Start a Workout")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    }
                }
            }
            // List of 5 previous workouts, for now just information on what exercises, sets, and reps were done.
            // Button to choose from workout to start
            NavigationLink(destination: WorkoutHistoryView()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.accentColor.opacity(0.4))
                        .frame(width: 300, height: 80)
                    
                    VStack(spacing: 20) {
                        Text("Workout History")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
        .appBackground()
         */
    }
}

#Preview {
    HomeView()
}
