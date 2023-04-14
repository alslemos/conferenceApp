//
//  CoferenceAppApp.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

@main
struct CoferenceAppApp: App {
    init() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { success, error in
            if success {
                print("All set!")
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
    var body: some Scene {
        WindowGroup {
            Jorge()
            //ContentView()
        }
    }
}
