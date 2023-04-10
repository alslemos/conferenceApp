//
//  ColorPage.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct ColorPage: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Choose your favorite color theme")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 48))
                    .bold()
                List {
                    ForEach(ColorApp.allCases, id: \.self) { colorApp in
                        NavigationLink {
                            Text("ola")
                                .navigationBarBackButtonHidden()
                        } label: {
                            HStack {
                                colorApp.color.frame(width: 30, height: 30)
                                    .cornerRadius(7)
                                Text(colorApp.name)
                            }.onTapGesture {
                                
                            }
                        }
                    }
                    
                }
            }
        }
        .background(Color(UIColor.secondarySystemBackground))
    }
}

struct ColorPage_Previews: PreviewProvider {
    static var previews: some View {
        ColorPage()
    }
}
