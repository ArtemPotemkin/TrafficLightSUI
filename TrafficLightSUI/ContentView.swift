//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Артём Потёмкин on 02.02.2024.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    @State private var title = "Start"
    @State private var currentLight: CurrentLight = .off
    
    var body: some View {
        VStack {
            ColorCircleView(
                color: .red,
                opacity: currentLight == .red ? 1 : 0.3)
            ColorCircleView(
                color: .yellow,
                opacity: currentLight == .yellow ? 1 : 0.3)
            ColorCircleView(
                color: .green,
                opacity: currentLight == .green ? 1 : 0.3)
            Spacer()
            Button(action: changeColor) {
                Text(title)
                    .font(.title)
            }
        }
        .padding()
    }
    private func changeColor() {
        title = "Next"        
        
        switch currentLight {
        case .off:
            currentLight = .red
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
