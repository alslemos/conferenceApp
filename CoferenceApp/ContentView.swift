//
//  ContentView.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()

    @State var currentPage: Int = 1
    var colorApp: ColorApp = .teal
    
    
    var body: some View {
            TabView(selection: $currentPage) {
                
                Home().tabItem {
                    Text("Home")
                    Image(systemName: "house.fill")
                }.tag(1)
                    .environmentObject(viewModel)
                
                Events().tabItem {
                    Text("Events")
                    Image(systemName: "calendar")
                }.tag(3)
                    .environmentObject(viewModel)
                
                Maps().tabItem {
                    Text("Maps")
                    Image(systemName: "map")
                }.tag(4)
                
                AroundMe().tabItem {
                    Text("Events")
                    Image(systemName: "person.line.dotted.person.fill")
                }.tag(5)
                
                Profile().tabItem {
                    Text("Profile")
                    Image(systemName: "person")
                }.tag(6)
            }.navigationBarBackButtonHidden(true)
            .onAppear {
                ThemeManager.shared.colorTheme = colorApp
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
