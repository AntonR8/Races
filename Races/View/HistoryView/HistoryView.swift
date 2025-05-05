//
//  HistoryView.swift
//  Races
//
//  Created by Антон Разгуляев on 03.05.2025.
//

import SwiftUI

struct HistoryView: View {
   @State private var historyManager = RaceHistoryManager.shared
        
        var body: some View {
            NavigationStack {
                List {
                    if historyManager.history.isEmpty {
                        Text("История скачек пуста")
                            .foregroundColor(.gray)
                            .font(.title2)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            .listRowSeparator(.hidden)
                    } else {
                        ForEach(historyManager.history) { race in
                          ResultsRowView(race: race)
                        }
                    }
                }
                .listStyle(.plain)
                .navigationTitle("История скачек")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }


#Preview {
    HistoryView()
}

