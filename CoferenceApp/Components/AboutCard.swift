//
//  AboutCard.swift
//  CoferenceApp
//
//  Created by Eduardo Dalencon on 11/04/23.
//

import SwiftUI

struct AboutCard: View {
    var speaker: Speaker
    
    var body: some View {
        VStack(spacing:0){
            Rectangle()
                .frame(width:114,height: 8)
                       .cornerRadius(2.5)
                       .foregroundColor(Color(uiColor: UIColor.secondarySystemBackground))
            
            speaker.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 129, height: 129)
                .padding(.top,41)
                .padding(.bottom,0)
                .shadow(radius: 2)
            VStack{
                Text("Hello,")
                    .font(.body)
                    .fontWeight(.bold)
                Text("I'm \(speaker.name)")
                    .fontWeight(.regular)
            }.padding(.top,30)
            
            HStack(spacing:2){
                Image(systemName: "apple.logo")
                    .resizable()
                    .frame(width: 22, height: 20)
                Text("WWDC")
                    .font(.title3)
                    .bold()
            }.padding(.top,30)
        }
        .padding(30)
        .padding(.horizontal,30)
        .background(.white)
        .frame(width:.infinity, height:.infinity)
        .cornerRadius(20)
    }
}

