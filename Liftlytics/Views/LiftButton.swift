//
//  LiftButton.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/29/25.
//

import SwiftUI

struct LiftButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    LiftButton(title: "value",
               background: Color.gray) {
        // Action
        
    }
}
