//
//  Event.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import Foundation
import SwiftUI


 class Speaker: Identifiable {
    var id: UUID = UUID()
    var name: String
    var role: String
    var imageName: String
    var events: [Event]
    var image: Image {
        return Image("Alan")
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
    
    var speakers: [Speaker] = []
    var events: Set<Event> = []
    
    init() {
        let startDate = Date()
        let day2 = Date(timeInterval: 60 * 60 * 24, since: startDate)
        let day3 = Date(timeInterval: 60 * 60 * 24 * 2, since: startDate)
        let day4 = Date(timeInterval: 60 * 60 * 24 * 3, since: startDate)
        let day5 = Date(timeInterval: 60 * 60 * 24 * 4, since: startDate)
        
        wwdc2023 = Event(description: "Apresentação de abertura, novidades e estratégia futura da Apple.", speaker: timCook, date: startDate)
        macOS = Event(description: "Novidades do sistema operacional macOS e desenvolvimento de apps nativos.", speaker: craigFederighi, date: startDate)
        hardware = Event(description: "Novas tecnologias de hardware e processadores para dispositivos Apple.", speaker: susanPrescott, date: startDate)
        appStore = Event(description: "Estratégias de marketing para a loja de aplicativos da Apple e desenvolvimento de negócios.", speaker: susanPrescott, date: startDate)
        privacy = Event(description: "Segurança e privacidade em dispositivos Apple e soluções de segurança para usuários e empresas.", speaker: timCook, date: startDate)
        design = Event(description: "Design de interface do usuário e melhores práticas para o desenvolvimento de aplicativos e sistemas Apple.", speaker: susanPrescott, date: startDate)
        software = Event(description: "Desenvolvimento de software e novidades na plataforma Apple.", speaker: timCook, date: startDate)
        macBookPro = Event(description: "Apresentação do novo MacBook Pro e suas especificações técnicas.", speaker: susanPrescott, date: day2)
        watchOS = Event(description: "Novidades do sistema operacional watchOS e seus aplicativos nativos.", speaker: susanPrescott, date: day2)
        iTunes = Event(description: "Lançamento da nova versão do iTunes com suas atualizações e melhorias.", speaker: timCook, date: day2)
        iOS = Event(description: "Apresentação do novo sistema operacional iOS e suas novas funcionalidades.", speaker: craigFederighi, date: day2)
        iPad = Event(description: "Lançamento do novo iPad e suas novas funcionalidades.", speaker: johnySrouji, date: day2)
        ARKit = Event(description: "Apresentação das novidades do ARKit e suas possibilidades de uso em apps e jogos.", speaker: craigFederighi, date: day2)
        iCloud = Event(description: "Apresentação das novas funcionalidades do iCloud e sua integração com os dispositivos Apple.", speaker: timCook, date: day2)
        HomeKit = Event(description: "Apresentação das novas possibilidades de uso do HomeKit em automação residencial.", speaker: craigFederighi, date: day3)
        AirPods = Event(description: "Lançamento dos novos AirPods e suas novas funcionalidades.", speaker: johnySrouji, date: day3)
        swift = Event(description: "Atualizações do Swift e tendências na programação para iOS, macOS e outras plataformas Apple.", speaker: craigFederighi, date: day3)
        ipadOS = Event(description: "Novidades no sistema operacional iPadOS e seu impacto em aplicativos de produtividade e criatividade.", speaker: johnySrouji, date: day3)
        appleMusic = Event(description: "Evolução da plataforma Apple Music e tendências no mercado de streaming de música.", speaker: johnySrouji, date: day4)
        airPods = Event(description: "Inovações em fones de ouvido sem fio e tecnologia de áudio para dispositivos Apple.", speaker: johnySrouji, date: day4)
        augmentedReality = Event(description: "Exploração de recursos de realidade aumentada e oportunidades de negócios na área de AR.", speaker: philSchiller, date: day4)
        healthKit = Event(description: "Novas funcionalidades do HealthKit e seu potencial para a área de saúde e bem-estar.", speaker: philSchiller, date: day4)
        homeKit = Event(description: "Atualizações no sistema de automação residencial HomeKit e suas possibilidades de uso em residências inteligentes.", speaker: philSchiller, date: day4)
        carPlay = Event(description: "Novidades no sistema CarPlay e sua integração com a tecnologia automotiva.", speaker: philSchiller, date: day5)
        gaming = Event(description: "Oportunidades e tendências na área de jogos para dispositivos Apple e o mercado mobile em geral.", speaker: philSchiller, date: day5)
        appleTV = Event(description: "Desenvolvimentos recentes da plataforma Apple TV e oportunidades no mercado de streaming de vídeo.", speaker: craigFederighi, date: day5)
        
        timCook.events = [wwdc2023, privacy, software, iTunes, iCloud]
        craigFederighi.events = [macOS, iOS, ARKit, HomeKit, swift, appleTV]
        susanPrescott.events = [hardware, appStore, design, macBookPro, watchOS]
        johnySrouji.events = [iPad, AirPods, ipadOS, appleMusic, airPods]
        philSchiller.events = [augmentedReality, healthKit, homeKit, carPlay, gaming]

         events = [wwdc2023, macOS, hardware, appStore, privacy, design, software, macBookPro, watchOS, iTunes, iPad, ARKit, iCloud, iOS, HomeKit, AirPods, swift, ipadOS, appleMusic, airPods, augmentedReality, healthKit, homeKit, carPlay, gaming, appleTV]

    }
}
