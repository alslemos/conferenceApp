//
//  Mocks.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 12/04/23.
//

import Foundation
import SwiftUI

struct Friend: Identifiable {
    let id = UUID()
    let name: String
    let country: String
    let role: String
    let address: String
    let location: ParkLocation
    let memoji: String
    let color: Color
}

struct Mock {
    static let friends: [Friend] = [
        Friend(name: "Julian King", country: "🇪🇸", role: "iOS Developer", address: "Madrid, Espanhã", location: ParkLocation.init(latitude: 37.3344846, longitude: -122.0094592),  memoji: "🤣", color: .pink),
        Friend(name: "Raquel Peres", country: "🇧🇷", role: "Apple Developer Academy Student", address: "Campinas, Brazil", location:  ParkLocation.init(latitude: 37.3349004, longitude: -122.0090241), memoji: "🤩", color: .orange),
        Friend(name: "Renan Gaucho", country: "🇧🇷", role: "iOS Mentor", address: "Ceara, Brazil", location: ParkLocation.init(latitude: 37.3348936, longitude: -122.008833), memoji: "🥸", color: .mint),
        Friend(name: "Steve Jobs", country: "🇺🇸", role: "Apple Co-Founder", address: "Cupertino, California", location: ParkLocation.init(latitude: 37.3345343, longitude: -122.0088873), memoji: "😎", color: .blue),
        Friend(name: "Ana Maria Cunha", country: "🇩🇪", role: "UX Design at Amazon ", address: "Berlim, Germany", location:  ParkLocation.init(latitude: 37.3347441, longitude: -122.0086379), memoji: "😬", color: .purple),
        Friend(name: "Isabela Gal Sza", country: "🇲🇬", role: "Android Developer at Google", address: "Antananarivo, Madagascar", location: ParkLocation.init(latitude: 37.3343349, longitude: -122.0092112), memoji: "🤔", color: .green),
        Friend(name: "Jose Isaque", country: "🇮🇱", role: "Senior iOS Develoer at Waze", address: "Telavive, Israel", location: ParkLocation.init(latitude: 37.3343349, longitude: -122.0092112), memoji: "🤭", color: .brown),
        Friend(name: "Vicent Pasteur", country: "🇫🇷", role: "Apple Developer Academy Student", address: "Paris, France", location: ParkLocation.init(latitude: 37.3353415, longitude: -122.0097565), memoji: "🥳", color: .yellow),
        Friend(name: "Joana D'Arc", country: "🇫🇷", role: "Apple Developer Academy Mentor", address: "Domrémy, France", location: ParkLocation.init(latitude: 37.3345583, longitude: -122.0080558), memoji: "😍", color: .green)
    ]
    
    
}
