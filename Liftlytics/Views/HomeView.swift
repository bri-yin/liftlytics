//
//  HomeView.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import SwiftUI

struct HomeView: View {
    // @StateObject var viewModel = HomeViewViewModel()
    var body: some View {
       VStack {

            // Title
            Text("Liftlytics")
                .font(.system(size: 60, design: .default))
                .bold()
           
            // Button to choose from existing workouts to start
            NavigationLink(destination: WorkoutListView()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.accentColor.opacity(0.4))
                        .frame(width: 300, height: 80)
                    
                    VStack(spacing: 20) {
                        Text("Workouts")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    }
                }
            }
           
           // Button to show workout history
            NavigationLink(destination: WorkoutHistoryView()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.accentColor.opacity(0.4))
                        .frame(width: 300, height: 80)
                    
                    VStack(spacing: 20) {
                        Text("Progress")
                            .font(.system(size: 40))
                            .fontWeight(.bold)
                            .foregroundColor(.accentColor)
                    }
                }
            }
        }
        .appBackground()
    }
}

#Preview {
    PreviewRoot {HomeView()}
}
