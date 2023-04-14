//
//  Jorge.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 12/04/23.
//

import SwiftUI

struct Jorge: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: QRcode()){
                HStack(alignment: .top){
                    Image(systemName: "apple.logo")
                        .resizable()
                        .frame(width: 55, height:60)
                        .foregroundColor(self.colorScheme == .dark ? .white : .black)
                    Text("WWDC23")
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(self.colorScheme == .dark ? .white : .black)
                }
                .padding(.horizontal, -53.0)
            }
        }
    }
}

struct Jorge_Previews: PreviewProvider {
    static var previews: some View {
        Jorge()
    }
}
