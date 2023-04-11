//
//  ColorsTheme.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import Foundation
import SwiftUI


class AppTheme {
    static let shared: AppTheme = AppTheme()
    var primaryColor: ColorApp = .green
}

enum ColorApp: CaseIterable {
    
    case blue
    case brown
    case cyan
    case green
    case indigo
    case mint
    case orange
    case pink
    case purple
    case red
    case teal
    case yellow
    
    var color: Color {
        switch self {
        case .red:
            return Color.red
        case .blue:
            return Color.blue
        case .green:
            return Color.green
        case .brown:
            return Color.brown
        case .cyan:
            return Color.cyan
        case .indigo:
            return Color.indigo
        case .mint:
            return Color.mint
        case .orange:
            return Color.orange
        case .pink:
            return Color.pink
        case .purple:
            return Color.purple
        case .teal:
            return Color.teal
        case .yellow:
            return Color.yellow
        }
    }
    
    var name: String {
        switch self {
        case .red:
            return "Red"
        case .blue:
            return "Blue"
        case .green:
            return "Green"
        case .brown:
            return "Brown"
        case .cyan:
            return "Cyan"
        case .indigo:
            return "Indigo"
        case .mint:
            return "Mint"
        case .orange:
            return "Orange"
        case .pink:
            return "Pink"
        case .purple:
            return "Purple"
        case .teal:
            return "Teal"
        case .yellow:
            return "Yellow"
        }
    }
}
