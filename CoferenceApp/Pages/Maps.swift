//
//  Maps.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//  Changed by alslemos on 10/04/23

import SwiftUI
import MapKit
import Foundation

struct NationalParkLocation: Codable, Identifiable {
    var id = UUID()
    var latitude, longitude: Double
    //Computed Property
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct Maps: View {
    // criando área de localizacao pelo MapKit passando coordenadas do local de desejo e posteriormente aproximacao
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.334795, longitude: -122.009007), span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.00))
    
    let locations: [NationalParkLocation] = [
          NationalParkLocation.init(latitude: 37.334795, longitude: -122.009007),
      ]
    
    // corpo da classe
    var body: some View {
        
        // referencia
        Map(coordinateRegion: $region, annotationItems: locations) { item in
            MapAnnotation(coordinate: item.location) {
                    Button {
                        print("Location is", item.location)
                    } label: {
                        Text("🥳")
                            .font(.largeTitle)
                    }
                }
        }
            .frame(minWidth: 700, idealWidth: .infinity, minHeight: 700, alignment: .leading)
            .edgesIgnoringSafeArea(.all) // ignora o tanto quanto possível
            .padding(.bottom) // mas respeita a área bottom
        
    }
    
}
struct Maps_Previews: PreviewProvider {
    static var previews: some View {
        Maps()
    }
}
