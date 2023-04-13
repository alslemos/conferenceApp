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

 class Event: Identifiable {
    let id: UUID = UUID()
    var description: String
    var speakers: [Speaker]
    var date: Date = Date.now
     
     init(description: String, speakers: [Speaker], date: Date) {
         self.description = description
         self.speakers = speakers
         self.date = date
     }
}

struct EventMock {
    
     var timCook = Speaker(name: "Tim Cook", role: "CEO", imageName: "timCookImage", events: [])
     var craigFederighi = Speaker(name: "Craig Federighi", role: "VP de engenharia de software", imageName: "craigFederighiImage", events: [])
     var susanPrescott = Speaker(name: "Susan Prescott", role: "VP de Marketing de Aplicativos", imageName: "susanPrescottImage", events: [])
     var johnySrouji = Speaker(name: "Johny Srouji", role: "VP de Tecnologias de Hardware", imageName: "johnySroujiImage", events: [])
     var philSchiller = Speaker(name: "Phil Schiller", role: "Fellow da Apple", imageName: "philSchillerImage", events: [])
     var chrisLattner = Speaker(name: "Chris Lattner", role: "Arquiteto-chefe de LLVM", imageName: "chrisLattnerImage", events: [])
     var torMyhren = Speaker(name: "Tor Myhren", role: "Vice-Presintent Marketing", imageName: "torMyhrenImage", events: [])
    
     var michelleKim = Speaker(name: "Michelle Kim", role: "Designer de UX", imageName: "michelleKimImage", events: [])
     var katieSkinner = Speaker(name: "Katie Skinner", role: "Gerente de Produto de Software", imageName: "katieSkinnerImage", events: [])
     var stanNg = Speaker(name: "Stan Ng", role: "Diretor de Marketing de Produto", imageName: "stanNgImage", events: [])
        
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
    var events: [Event] = []
    
    init() {
        let startDate = Date()
        let day2 = Date(timeInterval: 60 * 60 * 24, since: startDate)
        let day3 = Date(timeInterval: 60 * 60 * 24 * 2, since: startDate)
        let day4 = Date(timeInterval: 60 * 60 * 24 * 3, since: startDate)
        let day5 = Date(timeInterval: 60 * 60 * 24 * 4, since: startDate)
        
        wwdc2023 = Event(description: "Apresentação de abertura, novidades e estratégia futura da Apple.", speakers: [timCook, craigFederighi, susanPrescott], date: startDate)
        macOS = Event(description: "Novidades do sistema operacional macOS e desenvolvimento de apps nativos.", speakers: [craigFederighi, katieSkinner, michelleKim], date: startDate)
        hardware = Event(description: "Novas tecnologias de hardware e processadores para dispositivos Apple.", speakers: [johnySrouji, philSchiller, katieSkinner], date: startDate)
        appStore = Event(description: "Estratégias de marketing para a loja de aplicativos da Apple e desenvolvimento de negócios.", speakers: [susanPrescott, stanNg, torMyhren], date: startDate)
        privacy = Event(description: "Segurança e privacidade em dispositivos Apple e soluções de segurança para usuários e empresas.", speakers: [torMyhren, craigFederighi, timCook], date: startDate)
        design = Event(description: "Design de interface do usuário e melhores práticas para o desenvolvimento de aplicativos e sistemas Apple.", speakers: [michelleKim, philSchiller, katieSkinner], date: startDate)
        software = Event(description: "Desenvolvimento de software e novidades na plataforma Apple.", speakers: [chrisLattner, katieSkinner, susanPrescott], date: startDate)
        macBookPro = Event(description: "Apresentação do novo MacBook Pro e suas especificações técnicas.", speakers: [craigFederighi, katieSkinner, michelleKim], date: day2)
        watchOS = Event(description: "Novidades do sistema operacional watchOS e seus aplicativos nativos.", speakers: [johnySrouji, philSchiller, katieSkinner], date: day2)
        iTunes = Event(description: "Lançamento da nova versão do iTunes com suas atualizações e melhorias.", speakers: [susanPrescott, stanNg, torMyhren], date: day2)
        iOS = Event(description: "Apresentação do novo sistema operacional iOS e suas novas funcionalidades.", speakers: [torMyhren, craigFederighi, timCook], date: day2)
        iPad = Event(description: "Lançamento do novo iPad e suas novas funcionalidades.", speakers: [michelleKim, philSchiller, katieSkinner], date: day2)
        ARKit = Event(description: "Apresentação das novidades do ARKit e suas possibilidades de uso em apps e jogos.", speakers: [chrisLattner, katieSkinner, susanPrescott], date: day2)
        iCloud = Event(description: "Apresentação das novas funcionalidades do iCloud e sua integração com os dispositivos Apple.", speakers: [timCook, philSchiller, michelleKim], date: day2)
        HomeKit = Event(description: "Apresentação das novas possibilidades de uso do HomeKit em automação residencial.", speakers: [craigFederighi, katieSkinner, torMyhren], date: day3)
        AirPods = Event(description: "Lançamento dos novos AirPods e suas novas funcionalidades.", speakers: [johnySrouji, philSchiller, susanPrescott], date: day3)
        swift = Event(description: "Atualizações do Swift e tendências na programação para iOS, macOS e outras plataformas Apple.", speakers: [chrisLattner, katieSkinner, philSchiller], date: day3)
        ipadOS = Event(description: "Novidades no sistema operacional iPadOS e seu impacto em aplicativos de produtividade e criatividade.", speakers: [craigFederighi, michelleKim, katieSkinner], date: day3)
        appleMusic = Event(description: "Evolução da plataforma Apple Music e tendências no mercado de streaming de música.", speakers: [susanPrescott, stanNg, torMyhren], date: day4)
        airPods = Event(description: "Inovações em fones de ouvido sem fio e tecnologia de áudio para dispositivos Apple.", speakers: [johnySrouji, philSchiller, katieSkinner], date: day4)
        augmentedReality = Event(description: "Exploração de recursos de realidade aumentada e oportunidades de negócios na área de AR.", speakers: [torMyhren, craigFederighi, timCook], date: day4)
        healthKit = Event(description: "Novas funcionalidades do HealthKit e seu potencial para a área de saúde e bem-estar.", speakers: [susanPrescott, michelleKim, torMyhren], date: day4)
        homeKit = Event(description: "Atualizações no sistema de automação residencial HomeKit e suas possibilidades de uso em residências inteligentes.", speakers: [craigFederighi, philSchiller, katieSkinner], date: day4)
        carPlay = Event(description: "Novidades no sistema CarPlay e sua integração com a tecnologia automotiva.", speakers: [johnySrouji, craigFederighi, susanPrescott], date: day5)
        gaming = Event(description: "Oportunidades e tendências na área de jogos para dispositivos Apple e o mercado mobile em geral.", speakers: [philSchiller, katieSkinner, chrisLattner], date: day5)
        appleTV = Event(description: "Desenvolvimentos recentes da plataforma Apple TV e oportunidades no mercado de streaming de vídeo.", speakers: [susanPrescott, stanNg, torMyhren], date: day5)
        
        timCook.events = [wwdc2023, privacy, iOS, iCloud, augmentedReality]
        craigFederighi.events = [wwdc2023, macOS, macBookPro, macBookPro, iOS, HomeKit, ipadOS, augmentedReality, homeKit, carPlay]
        susanPrescott.events = [wwdc2023, appStore, software, iTunes, ARKit, AirPods, appleMusic, healthKit, carPlay, appleTV]
        johnySrouji.events = [hardware, watchOS, AirPods, airPods, carPlay]
        philSchiller.events = [hardware, design, watchOS, iPad, iCloud, AirPods, swift, airPods, homeKit, gaming]
        chrisLattner.events = [software, ARKit, swift, gaming]
        torMyhren.events = [appStore, privacy, iTunes, iOS, HomeKit, appleMusic, augmentedReality, healthKit, appleTV]
        michelleKim.events = [macOS, design, macBookPro, iPad, iCloud, ipadOS, healthKit]
        katieSkinner.events = [macOS, hardware, design, software, watchOS, iPad, ARKit, HomeKit, swift, airPods, homeKit, gaming]
        
        speakers = [timCook, craigFederighi, susanPrescott, johnySrouji, philSchiller, chrisLattner, torMyhren, michelleKim, katieSkinner]
        
         events = [wwdc2023, macOS, hardware, appStore, privacy, design, software, macBookPro, watchOS, iTunes, iPad, ARKit, iCloud, iOS, HomeKit, AirPods, swift, ipadOS, appleMusic, airPods, augmentedReality, healthKit, homeKit, carPlay, gaming, appleTV]

    }
}
