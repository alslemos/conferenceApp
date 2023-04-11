//
//  EventCard.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct EventCard: View {
    
    var speakerName: String = "Lynn Streja"
    var imageName: String = "Alan"
    var description: String = "Everthing about the new programming language Swift"
    var localization: String = "@Steve Jobs Theater"
    var width: Double = 0.85
    var body: some View {
        HStack(spacing: 15) {
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 46, height: 46)
                    Text(speakerName)
                }
                Text(description)
                    .font(.subheadline)
                    .bold()
                Text(localization)
                    .font(.caption)

            }.padding(.vertical)
                
            
            VStack(spacing: 25) {
                HStack {
                    Image(systemName: "map")
                        .foregroundColor(.white)
                    Image(systemName: "heart.fill")
                        .foregroundColor(.white)
                }
                Text("1:30pm")
                    .font(.caption)
                    .padding(.horizontal, 6)
                    .padding(.vertical, 3)
                    .background(Color.white)
                    .foregroundColor(.teal)
                    .cornerRadius(27)
            }
        }
        .frame(width: UIScreen.main.bounds.width * width)
        .padding(.horizontal,5)
        .background(Color.accentColor)
        .cornerRadius(16)
        .foregroundColor(.white)
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0 , y: 4)
        
    }
    
}

struct EventCard_Previews: PreviewProvider {
    static var previews: some View {
        EventCard()
            
    }
}
