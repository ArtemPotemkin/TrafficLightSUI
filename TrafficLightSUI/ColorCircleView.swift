//
//  ColorCircleView.swift
//  TrafficLightSUI
//
//  Created by Артём Потёмкин on 02.02.2024.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundStyle(color).opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .padding()
    }
}

#Preview {
    ColorCircleView(color: .red, opacity: 1)
}
