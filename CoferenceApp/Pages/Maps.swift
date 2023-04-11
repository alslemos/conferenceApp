//
//  Maps.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//  Changed by alslemos on 10/04/23

import SwiftUI
import MapKit

struct Maps: View {
    // criando área de localizacao pelo MapKit passando coordenadas do local de desejo e posteriormente aproximacao
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.334795, longitude: -122.009007), span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.00))
    
    // corpo da classe
    var body: some View {
        // referencia
        Map(coordinateRegion: $region)
            .frame(minWidth: 700, idealWidth: .infinity, minHeight: 700, alignment: .leading)
            .edgesIgnoringSafeArea(.all) // ignora o tanto quanto possível
            .padding(.bottom)
    }
}

struct Maps_Previews: PreviewProvider {
    static var previews: some View {
        Maps()
    }
}
