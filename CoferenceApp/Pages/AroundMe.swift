//
//  AroundMe.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI
import MapKit


struct AroundMe: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.334795, longitude: -122.009007), span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.00))
    
    
    @State var friends: [Friend] = Mock.friends
    @State var selectedFriend: Friend?
    
    @State var show = false
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: friends) { friend in
            MapAnnotation(coordinate: friend.location.location) {
                Button {
                    selectedFriend = friend
                    withAnimation(Animation.easeInOut) {
                        show.toggle()
                    }
                } label: {
                    Image(friend.memoji)
                        .resizable()
                        .frame(width: 52, height: 78)
                        .font(.largeTitle)
                                                .cornerRadius(50)
                }
            }
        }
        .frame(minWidth: 700, idealWidth: .infinity, minHeight: 700, alignment: .leading)
        .edgesIgnoringSafeArea(.all) // ignora o tanto quanto possível
        .padding(.bottom)
        .sheet(isPresented: $show) {
            sheetView()
        }
    }
    
    func sheetView() ->  some View {
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
                            withAnimation {
                                show.toggle()
                            }
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
