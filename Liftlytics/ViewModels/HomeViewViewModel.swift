//
//  HomeViewViewModel.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import Foundation

class HomeViewViewModel: ObservableObject {
    
    @Published var workouts: [Exercise] = []
    @Published var showingNewWorkoutView = false
    
    init() {
        
    }
}
