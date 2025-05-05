//
//  RaceHistory.swift
//  HorseRaces
//
//  Created by Антон Разгуляев on 03.05.2025.
//


import Foundation


struct RaceHistory: Identifiable, Codable {
    let id: UUID
    let date: Date
    let winner: Horse
    let participants: [Horse]
    
    init(winner: Horse, participants: [Horse]) {
        self.id = UUID()
        self.date = Date()
        self.winner = winner
        self.participants = participants
    }
}


let raceHistoryMockData = RaceHistory(
    winner: .init(name: "№1", color: .red),
    participants: [
    .init(name: "№1", color: .red),
    .init(name: "№2", color: .green),
    .init(name: "№3", color: .blue),
    .init(name: "№4", color: .orange),
    .init(name: "№5", color: .mint),
])
