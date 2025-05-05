//
//  RaceView.swift
//  Races
//
//  Created by Антон Разгуляев on 03.05.2025.
//

import SwiftUI
import UserNotifications


struct RaceView: View {
    @State private var viewModel = RaceViewModel()
    let notificationManager = NotificationManager.shared
    
    var body: some View {
        NavigationStack {
            TrackView(horses: viewModel.horses)
            Spacer()
            if let winner = viewModel.winner {
                WinnerView(winner: winner)
            }
            Spacer()
            StartButton(viewModel: viewModel)
        }
        .padding()
        .onAppear {
            notificationManager.requestNotificationPermission()
        }
    }
}


#Preview {
    MainView()
}



    
