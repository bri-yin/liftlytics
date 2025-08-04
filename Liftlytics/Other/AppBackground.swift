//
//  AppBackground.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/2/25.
//

import Foundation
import SwiftUI

struct AppBackground: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("AppBackground"))
        
    }
}

extension View {
    func appBackground() -> some View {
        modifier(AppBackground())
    }
}
