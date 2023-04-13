//
//  ColorPage.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct ColorPage: View {
    
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
                            ContentView(colorApp: colorApp)
                        } label: {
                            HStack {
                                colorApp.color.frame(width: 30, height: 30)
                                    .cornerRadius(7)
                                Text(colorApp.name)
                            }
                        }
                }
            }.navigationBarBackButtonHidden(true)
        }.background(Color(UIColor.secondarySystemBackground))
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
