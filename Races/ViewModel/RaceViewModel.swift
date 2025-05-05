//
//  RaceViewModel.swift
//  Races
//
//  Created by Антон Разгуляев on 03.05.2025.
//

import SwiftUI


@Observable
class RaceViewModel {
    private var historyManager = RaceHistoryManager.shared
    private var notificationManager = NotificationManager.shared
    var horses: [Horse] = []
    var winner: Horse?
    var raceInProcess = false
    
    init() {
        getHorses()
    }
    
   private func getHorses() {
        self.horses = [
            .init(name: "№1", color: .red),
            .init(name: "№2", color: .green),
            .init(name: "№3", color: .blue),
            .init(name: "№4", color: .orange),
            .init(name: "№5", color: .mint),
        ]
    }
    
    func startRace() {
        Task {
            horsesOnStart()
            await updatePositions()
            getWinner()
        }
    }
    
    
    private func horsesOnStart() {
        for i in 0..<horses.count {
            horses[i].position = 0
        }
        winner = nil
        raceInProcess = true
    }
    
    private func updatePositions() async {
        while !Task.isCancelled {
            try? await Task.sleep(nanoseconds: 500_000_000)
            for index in 0..<horses.count {
                await MainActor.run {
                    withAnimation(.smooth) {
                        horses[index].position += Int.random(in: 0...100)
                    }
                }
                if horses[index].position >= 1000 {
                    return
                }
            }
        }
    }
    
    
    private func getWinner() {
        self.winner = horses.first(where: { $0.position >= 1000 })
        raceInProcess = false
        if let winner {
            print("Победил: \(winner.name)")
            historyManager.addRace(winner: winner, participants: horses)
        }
    }
    
    
    
    
    
    
    

}
