//
//  EventCard.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct CurrentEventCardItem: View {
    
    @EnvironmentObject var viewModel: ViewModel
    var event: Event
    var localization: String = "@Steve Jobs Theater"
    var width: Double = 0.85
    @State var isFavorite: Bool = false
    
    var body: some View {
        HStack(spacing:0) {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    event.speaker.image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .frame(width: 46, height: 46)
                    Text(event.speaker.name)
                }
                Text(event.description)
                    .font(.subheadline)
                    .bold()
                    .lineLimit(3)
                Text(localization)
                    .font(.caption)
                    .padding(.bottom, 4)
            }.padding(.vertical, 12)
                .padding(.leading, 24)

              Spacer()
               
            VStack(spacing: 25) {
                HStack {
                    Image(systemName: "map")
                        .foregroundColor(.white)
                    Button {
                        if viewModel.favorites.contains(event) {
                            viewModel.favorites.remove(event)
                            isFavorite = false
                            event.isFavorite = false
                        } else {
                            viewModel.favorites.insert(event)
                            isFavorite = true
                            event.isFavorite = true
                        }
                        
                    } label: {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                    }
                }
                .foregroundColor(.white)
                
                Text("1:30pm")
                    .font(.caption)
                    .padding(5)
                    .padding(.horizontal,7)
                    .background(Color.white)
                    .foregroundColor(ThemeManager.shared.colorTheme.color)
                    .cornerRadius(27)
            }
            .padding(.trailing,24)
        }
        .background(ThemeManager.shared.colorTheme.color)
        .cornerRadius(16)
        .foregroundColor(.white)
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0 , y: 4)
        .padding(.top, 12)
    }
    
}


