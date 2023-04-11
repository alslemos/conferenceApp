//
//  EventCard.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct EventCard: View {
    var body: some View {
        HStack(spacing: 15) {
            VStack(alignment: .leading, spacing: 6) {
                HStack {
                    Circle()
                        .frame(width: 36, height: 36)
                    Text("Lynn Streja")
                }
                Text("Everthing about the new programming language Swift")
                    .font(.subheadline)
                    .bold()
                Text("@Steve Jobs Theater")
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
        }.frame(width: 342)
        .background(Color.accentColor)
        .cornerRadius(16)
        .foregroundColor(.white)
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0 , y: 4)
        .padding(.horizontal)
    }
}

struct EventCard_Previews: PreviewProvider {
    static var previews: some View {
        EventCard()
            .previewLayout(.fixed(width: 400, height: 200))
    }
}
