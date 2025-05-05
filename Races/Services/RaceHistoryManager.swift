//
//  RaceHistoryManager.swift
//  Races
//
//  Created by Антон Разгуляев on 03.05.2025.
//

import SwiftUI

@Observable
class RaceHistoryManager {
    
    static let shared = RaceHistoryManager()
    
    var history: [RaceHistory] = [] {
        didSet {
            saveHistory()
        }
    }
    private let historyKey = "raceHistory"
    
    private init() {
        loadHistory()
    }
    
    func addRace(winner: Horse, participants: [Horse]) {
        let newRace = RaceHistory(winner: winner, participants: participants)
        history.insert(newRace, at: 0)
        saveHistory()
    }
    
    private func saveHistory() {
        if let encoded = try? JSONEncoder().encode(history) {
            UserDefaults.standard.set(encoded, forKey: historyKey)
        }
    }
    
    private func loadHistory() {
        if let data = UserDefaults.standard.data(forKey: historyKey),
           let decoded = try? JSONDecoder().decode([RaceHistory].self, from: data) {
            history = decoded
        }
    }
}
