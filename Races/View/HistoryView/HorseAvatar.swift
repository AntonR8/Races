//
//  HorseAvatar.swift
//  Races
//
//  Created by Антон Разгуляев on 05.05.2025.
//

import SwiftUI

struct HorseAvatar: View {
    let race: RaceHistory
    
    var body: some View {
        Text("🐎")
            .font(.largeTitle)
            .padding(8)
            .background(
                race.winner.color
                    .clipShape(Circle())
            )
    }
}

#Preview {
    HorseAvatar(race: raceHistoryMockData)
}
