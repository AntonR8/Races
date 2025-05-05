//
//  HorseView.swift
//  Races
//
//  Created by Антон Разгуляев on 03.05.2025.
//

import SwiftUI

struct HorseView: View {
    var horse: Horse
    
    var body: some View {
        HStack {
            Text("🐎")
                .font(.largeTitle)
                .scaleEffect(x: -1, y: 1)
            Text(horse.name)
            Gauge(value: Double(horse.position), in: 0...1001) { }
                .tint(horse.color)
                Text("🏆")
                    .font(.largeTitle)
                    .opacity(horse.position >= 1000 ? 1 : 0)
        }
    }
}

#Preview {
    HorseView(horse: horseMockData)
        .padding()
}
