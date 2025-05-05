//
//  TrackView.swift
//  Races
//
//  Created by Антон Разгуляев on 05.05.2025.
//

import SwiftUI

struct TrackView: View {
    var horses: [Horse]
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(horses) { horse in
                HorseView(horse: horse)
            }
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(25)
    }
}

#Preview {
    RaceView()
}
