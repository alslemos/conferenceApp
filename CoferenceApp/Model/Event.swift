//
//  Event.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import Foundation
import SwiftUI


class Speaker: Identifiable, Hashable {
    static func == (lhs: Speaker, rhs: Speaker) -> Bool {
        lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    var id: UUID = UUID()
    var name: String
    var role: String
    var imageName: String
    var events: [Event]
    var image: Image {
        return Image(imageName)
    }
    
     init(name: String, role: String, imageName: String, events: [Event]) {
         self.name = name
         self.role = role
         self.imageName = imageName
         self.events = events
     }
}

class Event: Identifiable, Hashable {
    static func == (lhs: Event, rhs: Event) -> Bool {
        lhs.id == rhs.id
    }
    
    let id: UUID = UUID()
    var description: String
    var speaker: Speaker
    var date: Date = Date.now
    var isFavorite: Bool = false
     
     init(description: String, speaker: Speaker, date: Date) {
         self.description = description
         self.speaker = speaker
         self.date = date
     }
     
     func hash(into hasher: inout Hasher) {
         hasher.combine(id)
     }
}

struct EventMock {
    
    var wwdcDate: Date {
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = 2023
        dateComponents.month = 6
        dateComponents.day = 6
        return calendar.date(from: dateComponents)!
    }
    
     var timCook = Speaker(name: "Tim Cook", role: "CEO", imageName: "timCookImage", events: [])
     var craigFederighi = Speaker(name: "Craig Federighi", role: "VP de engenharia de software", imageName: "craigFederighiImage", events: [])
     var susanPrescott = Speaker(name: "Susan Prescott", role: "VP de Marketing de Aplicativos", imageName: "susanPrescottImage", events: [])
     var johnySrouji = Speaker(name: "Johny Srouji", role: "VP de Tecnologias de Hardware", imageName: "johnySroujiImage", events: [])
     var philSchiller = Speaker(name: "Phil Schiller", role: "Fellow da Apple", imageName: "philSchillerImage", events: [])
        
     var wwdc2023: Event
     var macOS: Event
     var hardware: Event
     var appStore: Event
     var privacy: Event
     var design: Event
     var software: Event
     var macBookPro: Event
     var watchOS: Event
     var iTunes: Event
     var iPad: Event
     var ARKit: Event
     var iCloud: Event
     var iOS: Event
     var HomeKit: Event
     var AirPods: Event
     var swift: Event
     var ipadOS: Event
     var appleMusic: Event
     var airPods: Event
     var augmentedReality: Event
     var healthKit: Event
     var homeKit: Event
     var carPlay: Event
     var gaming: Event
     var appleTV: Event
    
    var speakers: Set<Speaker> = []
    var events: Set<Event> = []
    
    init() {
        
        let calendar = Calendar.current
        var dateComponents = DateComponents()
        dateComponents.year = 2023
        dateComponents.month = 6
        dateComponents.day = 6
        let startDate = calendar.date(from: dateComponents)!
        
        let day2 = Date(timeInterval: 60 * 60 * 24, since: startDate)
        let day3 = Date(timeInterval: 60 * 60 * 24 * 2, since: startDate)
        let day4 = Date(timeInterval: 60 * 60 * 24 * 3, since: startDate)
        let day5 = Date(timeInterval: 60 * 60 * 24 * 4, since: startDate)
        
        wwdc2023 = Event(description: "Keynote presentation, news and future strategy from Apple.", speaker: timCook, date: startDate)
        macOS = Event(description: "What's new in the macOS operating system and native app development.", speaker: craigFederighi, date: startDate)
        hardware = Event(description: "New hardware and processor technologies for Apple devices.", speaker: susanPrescott, date: startDate)
        appStore = Event(description: "Apple app store marketing strategies and business development.", speaker: susanPrescott, date: startDate)
        privacy = Event(description: "Security and privacy on Apple devices and security solutions for users and companies.", speaker: timCook, date: startDate)
        design = Event(description: "UI design and best practices for developing Apple apps and systems.", speaker: susanPrescott, date: startDate)
        software = Event(description: "Software development and news on the Apple platform.", speaker: timCook, date: startDate)
        macBookPro = Event(description: "Presentation of the new MacBook Pro and its technical specifications.", speaker: susanPrescott, date: day2)
        watchOS = Event(description: "What's new in the watchOS operating system and its native apps.", speaker: susanPrescott, date: day2)
        iTunes = Event(description: "Release of the new version of iTunes with its updates and improvements.", speaker: timCook, date: day2)
        iOS = Event(description: "Presentation of the new iOS operating system and its new features.", speaker: craigFederighi, date: day2)
        iPad = Event(description: "Launch of the new iPad and its new features.", speaker: johnySrouji, date: day2)
        ARKit = Event(description: "Presentation of ARKit news and its possibilities of use in apps and games.", speaker: craigFederighi, date: day2)
        iCloud = Event(description: "Presentation of the new features of iCloud and its integration with Apple devices.", speaker: timCook, date: day2)
        HomeKit = Event(description: "Presentation of the new possibilities of using HomeKit in home automation.", speaker: craigFederighi, date: day3)
        AirPods = Event(description: "Launch of the new AirPods and their new features.", speaker: johnySrouji, date: day3)
        swift = Event(description: "Swift updates and trends in programming for iOS, macOS and other Apple platforms.", speaker: craigFederighi, date: day3)
        ipadOS = Event(description: "What's new in the iPadOS operating system and its impact on productivity and creativity apps.", speaker: johnySrouji, date: day3)
        appleMusic = Event(description: "Evolution of the Apple Music platform and trends in the music streaming market.", speaker: johnySrouji, date: day4)
        airPods = Event(description: "Innovations in wireless headphones and audio technology for Apple devices.", speaker: johnySrouji, date: day4)
        augmentedReality = Event(description: "Exploration of augmented reality resources and business opportunities in the AR area.", speaker: philSchiller, date: day4)
        healthKit = Event(description: "New HealthKit features and their potential for health and wellness.", speaker: philSchiller, date: day4)
        homeKit = Event(description: "Updates to the HomeKit home automation system and its possibilities for use in smart homes.", speaker: philSchiller, date: day4)
        carPlay = Event(description: "New features in the CarPlay system and its integration with automotive technology.", speaker: philSchiller, date: day5)
        gaming = Event(description: "Opportunities and trends in the area of games for Apple devices and the mobile market in general.", speaker: philSchiller, date: day5)
        appleTV = Event(description: "Recent Apple TV platform developments and opportunities in the video streaming market.", speaker: craigFederighi, date: day5)
        
        timCook.events = [wwdc2023, privacy, software, iTunes, iCloud]
        craigFederighi.events = [macOS, iOS, ARKit, HomeKit, swift, appleTV]
        susanPrescott.events = [hardware, appStore, design, macBookPro, watchOS]
        johnySrouji.events = [iPad, AirPods, ipadOS, appleMusic, airPods]
        philSchiller.events = [augmentedReality, healthKit, homeKit, carPlay, gaming]

         events = [wwdc2023, macOS, hardware, appStore, privacy, design, software, macBookPro, watchOS, iTunes, iPad, ARKit, iCloud, iOS, HomeKit, AirPods, swift, ipadOS, appleMusic, airPods, augmentedReality, healthKit, homeKit, carPlay, gaming, appleTV]

    }
}
