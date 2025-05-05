//
//  Horse.swift
//  Races
//
//  Created by Антон Разгуляев on 03.05.2025.
//

import SwiftUI


struct Horse: Identifiable, Codable {
    let id = UUID()
    let name: String
    let color: Color
    var position: Int = 0
}


let horseMockData = Horse(name: "№1", color: .brown, position: 1000)
