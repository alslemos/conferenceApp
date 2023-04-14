//
//  EventCardItem.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 12/04/23.
//

import SwiftUI

struct EventCardItem: View {
    var event: Event
    @EnvironmentObject var viewModel: ViewModel
    
    var speakerName: String = "Lynn Streja"
    var imageName: String = "Alan"
    var description: String = "Everthing about the new programming language Swift"
    var localization: String = "@Steve Jobs Theater"
    @State var isFavorite: Bool = false
    
    var body: some View {
        HStack(spacing:0) {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    event.speaker.image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: 46, height: 46)
                    Text(event.speaker.name)
                }
                Text(event.description)
                    .font(.caption)
                    .bold()
                    .lineLimit(3)
                Text(localization)
                    .font(.caption)
                    .padding(.bottom, 4)
            }.padding(.leading, 12)
                .padding(.top, 10)
                .padding(.bottom, 12)
    
               
            VStack(spacing: 25) {
                HStack {
                    Image(systemName: "map")
                        .foregroundColor(.white)
                    Button {
                        if viewModel.favorites.contains(event) {
                            withAnimation(Animation.easeInOut){
                                viewModel.favorites.remove(event)
                                isFavorite = false
                            }
                        } else {
                            withAnimation(Animation.easeInOut) {
                                viewModel.favorites.insert(event)
                                isFavorite = true
                            }
                        }
                    } label: {
                        Image(systemName: viewModel.favorites.contains(event) ? "heart.fill" : "heart")
                    }
                }
                .foregroundColor(.white)
               
                VStack {
                    Text("TODAY")
                        .font(.caption)
                        .padding(5)
                        .padding(.horizontal,7)
                        .background(Color.white)
                        .foregroundColor(ThemeManager.shared.colorTheme.color)
                        .cornerRadius(27)
                    
                    Text("1:30pm")
                        .font(.caption)
                        .padding(5)
                        .padding(.horizontal,7)
                        .background(Color.white)
                        .foregroundColor(ThemeManager.shared.colorTheme.color)
                        .cornerRadius(27)
                }
                .padding(.trailing, 12)
                
            }
         //   .padding(.trailing,24)
        }
        .frame(width: UIScreen.main.bounds.width * 0.6)
        .background(ThemeManager.shared.colorTheme.color)
        .cornerRadius(16)
        .foregroundColor(.white)
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0 , y: 4)
        .padding(.top, 12)
    }
}
