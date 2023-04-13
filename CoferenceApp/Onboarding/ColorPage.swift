//
//  ColorPage.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct ColorPage: View {
    @EnvironmentObject var theme: ThemeManager
    
    var body: some View {
        
            VStack {
                Text("Choose your favorite color theme")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 48))
                    .bold()
                    .foregroundColor(.black)
                List {
                    ForEach(ColorApp.allCases, id: \.self) { colorApp in
                        NavigationLink {
                            
                            ContentView()
                        } label: {
                            HStack {
                                colorApp.color.frame(width: 30, height: 30)
                                    .cornerRadius(7)
                                Text(colorApp.name)
                            }.onTapGesture {
                                theme.colorTheme = colorApp
                            }
                        }
                    
                }
            }.background(Color(UIColor.secondarySystemBackground))
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct ColorPage_Previews: PreviewProvider {
    static var previews: some View {
        ColorPage()
    }
}


struct AppAccentColor: EnvironmentKey {
    static let defaultValue: Color = .red
}

extension EnvironmentValues {
    var appAccentColor: Color {
        get { self[AppAccentColor.self] }
        set { self[AppAccentColor.self] = newValue }
    }
}
