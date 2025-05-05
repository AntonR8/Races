//
//  MainView.swift
//  Races
//
//  Created by Антон Разгуляев on 03.05.2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            RaceView()
                .tabItem {
                    Label("Скачки", systemImage: "flag.pattern.checkered.2.crossed")
                }
            HistoryView()
                .tabItem {
                    Label("История", systemImage: "list.bullet")
                }
        }
    }
}


#Preview {
    MainView()
}
