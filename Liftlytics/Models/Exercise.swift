//
//  Exercise.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import Foundation

// Represents an exercise, simple as that.
struct Exercise: Identifiable {
    let id: UUID
    let name: String
    
    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}


