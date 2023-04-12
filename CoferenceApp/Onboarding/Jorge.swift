//
//  Jorge.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 12/04/23.
//

import SwiftUI

struct Jorge: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: QRcode()){
                HStack(alignment: .top){
                    Image(systemName: "apple.logo")
                        .resizable()
                        .frame(width: 55, height:55)
                        .foregroundColor(.black)
                    Text("WWDC23")
                        .font(.system(size: 50))
                        .bold()
                        .foregroundColor(.black)
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
