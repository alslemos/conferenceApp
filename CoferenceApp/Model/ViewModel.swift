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
    @Published var events: Set<Event> = []
    @Published var speakers: Set<Speaker> = []
    @Published var favorites: Set<Event> = []
    
    @Published var todayEvent: [Event] = []
    
    init() {
        events = mockData.events
        speakers = mockData.speakers
        
        todayEvent = events.filter({ event in
            Calendar.current.isDateInToday(event.date)
        })
    }
    
}
