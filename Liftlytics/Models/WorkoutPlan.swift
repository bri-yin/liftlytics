//
//  WorkoutPlan.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import Foundation

struct WorkoutPlan: Identifiable {
    let id: String
    let name: String
    let exercises: [Exercise]
}
