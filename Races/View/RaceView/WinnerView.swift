//
//  WinnerView.swift
//  Races
//
//  Created by Антон Разгуляев on 05.05.2025.
//

import SwiftUI

struct WinnerView: View {
    let winner: Horse
    
    var body: some View {
        VStack {
            Image(systemName: "trophy")
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
            Text("Победитель: Лошадь \(winner.name)")
                .foregroundColor(.white)
                .font(.headline)
        }
        .padding()
        .padding(.horizontal)
        .background(Color.yellow.gradient)
        .cornerRadius(10)
        .padding()
    }
}

#Preview {
    RaceView()
}
