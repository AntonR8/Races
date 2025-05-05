//
//  ResultsRowView.swift
//  Races
//
//  Created by Антон Разгуляев on 04.05.2025.
//

import SwiftUI

struct ResultsRowView: View {
    var race: RaceHistory
    
    var body: some View {
        HStack(spacing: 16) {
        avatar
        VStack(alignment: .leading, spacing: 8) {
            Text("Победитель: Лошадь \(race.winner.name)")
                .font(.headline)
            
            Text(race.date.formatted(date: .abbreviated, time: .shortened))
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Участники: лошади \(race.participants.map{$0.name}.joined(separator: ", "))")
                .font(.caption)
        }
    }
        .padding(.vertical, 8)
    }
}

#Preview {
    ResultsRowView(race: raceHistoryMockData)
}



extension ResultsRowView {
    var avatar: some View {
        Text("🐎")
            .font(.largeTitle)
            .padding(8)
            .background(
                race.winner.color
                    .clipShape(Circle())
            )
    }
}
