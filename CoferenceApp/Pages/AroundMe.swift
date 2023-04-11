//
//  AroundMe.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI
import MapKit

struct AroundMe: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.334795, longitude: -122.009007), span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.00))
    
    let locations: [ParkLocation] = [
          ParkLocation.init(latitude: 37.334795, longitude: -122.009007),
      ]
    
    @State var show = false
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            MapAnnotation(coordinate: item.location) {
                    Button {
                        show.toggle()
                    } label: {
                        Text("🥳")
                            .font(.largeTitle)
                    }
                }
        }
            .frame(minWidth: 700, idealWidth: .infinity, minHeight: 700, alignment: .leading)
            .edgesIgnoringSafeArea(.all) // ignora o tanto quanto possível
            .padding(.bottom)
            .sheet(isPresented: $show) {
                Text("É OS GURI")
                    .presentationDetents([.medium])
            }// mas respeita a área bottom
    }
}

struct AroundMe_Previews: PreviewProvider {
    static var previews: some View {
        AroundMe()
    }
}
