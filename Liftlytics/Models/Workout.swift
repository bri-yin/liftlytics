//
//  Workout.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/9/25.
//

import Foundation

struct Workout: Identifiable {
    let id: UUID
    let name: String
    var exerciseIDs: [UUID]
    
    init(id: UUID = UUID(), name: String, exerciseIDs: [UUID]) {
        self.id = id
        self.name = name
        self.exerciseIDs = exerciseIDs
    }
    
}
