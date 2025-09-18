//
//  ContentView.swift
//  Counter Watch App
//
//  Created by brian on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    @State var currentCount: Int = 0
    @State var showingResetConfirmation = false

    var body: some View {
        Text(String(self.currentCount))
            .foregroundColor(.blue)
            .font(.system(size: 100))
            .onTapGesture {
                currentCount += 1
            }
            .onLongPressGesture {
                showingResetConfirmation = true
            }
            .alert("Reset Counter", isPresented: $showingResetConfirmation) {
                Button("Cancel") { }
                Button("Reset") {
                    currentCount = 0
                }
            } message: {
                Text("Are you sure you want to reset the counter?")
            }
            .focusable()
    }
}

#Preview {
    ContentView()
}
