//
//  ThemeManager.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 11/04/23.
//

import Foundation

class ThemeManager: ObservableObject {
    static var shared: ThemeManager = ThemeManager()
    @Published var colorTheme: ColorApp = .brown
}
