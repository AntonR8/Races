//
//  StartButton.swift
//  Races
//
//  Created by Антон Разгуляев on 05.05.2025.
//

import SwiftUI

struct StartButton: View {
    var viewModel: RaceViewModel
    
    var body: some View {
        Button(viewModel.winner == nil ? "Старт" : "Рестарт",
               systemImage: viewModel.winner == nil ? "flag.pattern.checkered.2.crossed" : "arrow.trianglehead.clockwise") {
            viewModel.startRace()
        }
        .padding()
        .foregroundStyle(.white)
        .frame(maxWidth: .infinity)
        .background(viewModel.raceInProcess ? Color.gray : Color.red)
        .cornerRadius(15)
        .disabled(viewModel.raceInProcess)
    }
}

#Preview {
    StartButton(viewModel: RaceViewModel())
        .padding()
}
