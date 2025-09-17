//
//  ContentView.swift
//  Counter Watch App
//
//  Created by brian on 9/16/25.
//

import SwiftUI

struct ContentView: View {
    @State var currentCount: Int = 0

    var body: some View {
        Text(String(self.currentCount))
            .foregroundColor(.blue)
            .font(.system(size: 100))
            .onTapGesture {
                currentCount += 1
            }.onLongPressGesture {
                currentCount = 0
            }.focusable()
    }
}

#Preview {
    ContentView()
}
