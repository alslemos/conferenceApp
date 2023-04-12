//
//  AroundMe.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI
import MapKit

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
        Friend(name: "Isabela", country: "🇲🇬", role: "Android Developer at Google", address: "Antananarivo, Madagascar", location: ParkLocation.init(latitude: 37.3343349, longitude: -122.0092112), memoji: "🤔", color: .green),
        Friend(name: "Jose", country: "🇮🇱", role: "Senior iOS Develoer at Waze", address: "Telavive, Israel", location: ParkLocation.init(latitude: 37.3343349, longitude: -122.0092112), memoji: "🤭", color: .brown)
    ]
}

struct AroundMe: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.334795, longitude: -122.009007), span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.00))
    
    
    let friends: [Friend] = Mock.friends
    @State var selectedFriend: Friend?
    
    @State var show = false
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: friends) { friend in
            MapAnnotation(coordinate: friend.location.location) {
                Button {
                    selectedFriend = friend
                    show.toggle()
                } label: {
                    Text(friend.memoji)
                        .frame(width: 50, height: 50)
                        .font(.largeTitle)
                        .background(friend.color)
                            .cornerRadius(50)
                }
            }
        }
        .frame(minWidth: 700, idealWidth: .infinity, minHeight: 700, alignment: .leading)
        .edgesIgnoringSafeArea(.all) // ignora o tanto quanto possível
        .padding(.bottom)
        .sheet(isPresented: $show) {
            ZStack {
                Color.gray.opacity(0.2)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(selectedFriend?.country ?? "🇧🇷")
                            Text(selectedFriend?.name ?? "Joana dos Santos")
                                .bold()
                            Spacer()
                            Button {
                                show.toggle()
                            } label: {
                                Image(systemName: "xmark.circle.fill")
                                    .font(.largeTitle)
                            }.symbolRenderingMode(.palette)
                                .foregroundStyle(.gray, .white)
                        }
                        
                        VStack(alignment: .leading) {
                            Text(selectedFriend?.role ?? "Apple Developer Academy Student")
                            Text(selectedFriend?.address ?? "Curitiba Brazil")
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        
                    }
                    Divider()
                    HStack(spacing: 16) {
                        ModalButton(iconName: "person.circle.fill", label: "Contact", footnoteLabel: "iMessage", iconColor: .green)
                        
                        ModalButton(iconName: "person.circle.fill", label: "Directions", footnoteLabel: "80m", iconColor: .blue)
                    }
                    Spacer()
                    
                }.padding(.top, 20)
                .padding(.horizontal)
                .presentationDetents([.height(UIScreen.main.bounds.height * 0.25)])
            }
        }
    }
}

struct AroundMe_Previews: PreviewProvider {
    static var previews: some View {
        AroundMe()
    }
}

struct ModalButton: View {
    let iconName: String
    let label: String
    let footnoteLabel: String
    let iconColor: Color
    var body: some View {
        
        VStack(alignment: .center) {
            Image(systemName: iconName)
                .font(.title)
                .symbolRenderingMode(.palette)
                .foregroundStyle(.white, iconColor)
            VStack {
                Text(label)
                    .foregroundColor(.black)
                Text(footnoteLabel)
                    .foregroundColor(.secondary)
            }
            .font(.caption2)
            
        }.padding()
            .frame(width: UIScreen.main.bounds.width * 0.42, height: 70)
            .background(Color.white)
            .cornerRadius(13)
    }
}
