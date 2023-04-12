//
//  CoferenceAppApp.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

@main
struct CoferenceAppApp: App {
    @ObservedObject var themeManager = ThemeManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(themeManager)
                .accentColor(themeManager.colorTheme.color)
        }
    }
}
