//
//  ContentView.swift
//  Liftlytics
//
//  Created by Brian Yin on 7/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    PreviewRoot {ContentView()}
}

