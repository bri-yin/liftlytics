//
//  SetHistory.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/10/25.
//

import Foundation

class SetHistory: ObservableObject {
    @Published var sets: [ExerciseSet] = []
    
    func add(_ exerciseSet: ExerciseSet) {
        sets.append(exerciseSet)
    }
    
    func sort() {
        sets.sort { setA, setB in
            setA.timestamp > setB.timestamp
        }
    }
}
