//
//  Exercise.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import Foundation
import SwiftUI
import SwiftData

@Model
final class Exercise {
    
    // unique normalized name for lookups
    @Attribute(.unique) var normalizedName: String
    
    // name that exercise will display
    var displayName: String
    
    // date exercise was created
    var createdDate: Date
    
    init(normalizedName: String, displayName: String, createdDate: Date) {
        self.normalizedName = normalizedName
        self.displayName = displayName
        self.createdDate = createdDate
    }
    
}


