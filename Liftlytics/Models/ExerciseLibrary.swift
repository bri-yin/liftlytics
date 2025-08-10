//
//  ExerciseLibrary.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/9/25.
//

import Foundation

class ExerciseLibrary: ObservableObject{
    @Published var exercises: [Exercise] = []
    
    func add(_ exercise : Exercise) {
        exercises.append(exercise)
    }
}
