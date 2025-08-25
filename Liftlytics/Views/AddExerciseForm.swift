//
//  AddExerciseForm.swift
//  Liftlytics
//
//  Created by Brian Yin on 8/24/25.
//

import Foundation
import SwiftUI

struct AddExerciseForm: View {
    @Environment(\.dismiss) private var dismiss
    @State private var name = ""
    @FocusState private var focused: Bool
    var onSave: (String) -> Void
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Exercise Name", text: $name)
                    .focused($focused)
                    .textInputAutocapitalization(.words)
                    .submitLabel(.done)
                    .onSubmit { trySave()}
            }
            .navigationTitle("Add Exercise")
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {dismiss()}
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {trySave()}
                        .disabled(name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)
                }
            }
            .onAppear {
                DispatchQueue.main.async {focused = true}
            }
        }
        
    }
    
    private func trySave() {
        let trimmed = name.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return }
        onSave(trimmed)
        dismiss()
    }
}
