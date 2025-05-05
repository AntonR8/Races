//
//  NotificationManager.swift
//  Races
//
//  Created by Антон Разгуляев on 04.05.2025.
//

import UserNotifications




class NotificationManager {
    static let shared = NotificationManager()
    private init() {}
    
    func requestNotificationPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                print("Разрешение на уведомления получено")
            } else if let error = error {
                print("Ошибка запроса уведомлений: \(error.localizedDescription)")
            }
        }
    }
}
