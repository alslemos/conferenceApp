//
//  ContentView.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var currentPage: Int = 1
   // @EnvironmentObject var themeManager: ThemeManager
    
   
    var body: some View {
            TabView(selection: $currentPage) {
                
                Home().tabItem {
                    Text("Home")
                    Image(systemName: "house.fill")
                }.tag(1)
                
                Events().tabItem {
                    Text("Events")
                    Image(systemName: "calendar")
                }.tag(3)
                
                Maps().tabItem {
                    Text("Maps")
                    Image(systemName: "map")
                }.tag(4)
                
                AroundMe().tabItem {
                    Text("Events")
                    Image(systemName: "person.line.dotted.person.fill")
                }.tag(5)
                
                //Coloquei o colorPage aqui só pra testar a mudanca de cor
                //Depois eu removo e coloco o Profile novamente
                Profile().tabItem {
                    Text("Profile")
                    Image(systemName: "person")
                }.tag(6)
                // .environmentObject(themeManager)
            }.navigationBarBackButtonHidden(true)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ThemeManager())
    }
}
