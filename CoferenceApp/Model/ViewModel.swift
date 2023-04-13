//
//  ViewModel.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 13/04/23.
//

import Foundation

import SwiftUI

class ViewModel: ObservableObject {
    
    private var mockData = EventMock()
    @Published var events: [Event] = []
    @Published var speakers: [Speaker] = []
    @Published var favorites: [Event] = []
    
    init() {
        events = mockData.events
        speakers = mockData.speakers
    }
    
}
