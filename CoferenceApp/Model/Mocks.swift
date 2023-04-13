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
        Friend(name: "Julian King", country: "🇪🇸", role: "iOS Developer", address: "Madrid, Espanhã", location: ParkLocation.init(latitude: 37.3344846, longitude: -122.0094592),  memoji: "memoji1", color: .pink),
        Friend(name: "Raquel Peres", country: "🇧🇷", role: "Apple Developer Academy Student", address: "Campinas, Brazil", location:  ParkLocation.init(latitude: 37.3349004, longitude: -122.0090241), memoji: "memoji2", color: .orange),
        Friend(name: "Renan Gaucho", country: "🇧🇷", role: "iOS Mentor", address: "Ceara, Brazil", location: ParkLocation.init(latitude: 37.3348936, longitude: -122.008833), memoji: "memoji3", color: .mint),
        Friend(name: "Steve Jobs", country: "🇺🇸", role: "Apple Co-Founder", address: "Cupertino, California", location: ParkLocation.init(latitude: 37.3345343, longitude: -122.0088873), memoji: "memoji4", color: .blue),
        Friend(name: "Ana Maria Cunha", country: "🇩🇪", role: "UX Design at Amazon ", address: "Berlim, Germany", location:  ParkLocation.init(latitude: 37.3347441, longitude: -122.0086379), memoji: "memoji5", color: .purple),
        Friend(name: "Isabela Gal Sza", country: "🇲🇬", role: "Android Developer at Google", address: "Antananarivo, Madagascar", location: ParkLocation.init(latitude: 37.3343349, longitude: -122.0092112), memoji: "memoji6", color: .green),
        Friend(name: "Jose Isaque", country: "🇮🇱", role: "Senior iOS Develoer at Waze", address: "Telavive, Israel", location: ParkLocation.init(latitude: 37.3343349, longitude: -122.0092112), memoji: "memoji7", color: .brown),
        Friend(name: "Vicent Pasteur", country: "🇫🇷", role: "Apple Developer Academy Student", address: "Paris, France", location: ParkLocation.init(latitude: 37.3353415, longitude: -122.0097565), memoji: "memoji8", color: .yellow),
        Friend(name: "Joana D'Arc", country: "🇫🇷", role: "Apple Developer Academy Mentor", address: "Domrémy, France", location: ParkLocation.init(latitude: 37.3345583, longitude: -122.0080558), memoji: "memoji9", color: .green)
    ]
    
    
}
