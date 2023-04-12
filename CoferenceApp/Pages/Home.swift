//
//  Home.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct Home: View {
    let numbers = [1, 2, 3, 4, 5]
    
    var body: some View {
        
            ScrollView(showsIndicators: false) {
                VStack(spacing:0){
                    
                    HStack(alignment: .top){
                        Image(systemName: "apple.logo").font(.title2)
                        Text("WWDC23").font(.title2).bold()
                        
                    }
                    Spacer(minLength: 10)
                    
                    
                    Image("perfil")
                    Text("Hello,")
                        .font(.system(size: 48))
                        .bold()
                    Text("Julia")
                        .font(.system(size: 48))
                        .fontWeight(.regular)
                    
                    Text("Dont miss anything.")
                        .fontWeight(.semibold)
                        .font(.title2)
                        .padding(.top,20)
                }
                
                
                VStack(alignment:.leading){
                    Text("Latest news from Apple")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            ForEach(numbers, id: \.self) { number in
                                NewsItem()
                            }
                        }
                        
                        
                    }
                    
                    
                }
                .padding(.top,20)
                
                VStack{
                    Text("Favorite events")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(numbers, id: \.self) { number in
                                EventCard(width:0.6)
                            }
                        }
                        
                        
                    }
                }
                .padding(.top,20)
                
                VStack(alignment:.leading, spacing:20){
                    
                    Text("Today's full schedule (June 6)")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    ForEach(numbers, id: \.self) { number in
                        cardItem(speakerName: "Lynn Streja",imageName: "Alan",description: "Everthing about the new programming language Swift", localization: "@Steve Jobs Theater", width: 0.90, isFavorite: false)
                    }
                }.frame(maxWidth: .infinity,alignment: .leading)
                .padding(.top,20)
                
            }
            .padding(20)
            .background(Color(uiColor: UIColor.secondarySystemBackground).edgesIgnoringSafeArea(.all))
   
    }
    
    func cardItem(speakerName: String,imageName: String,description: String, localization: String, width: Double, isFavorite: Bool) -> some View {
        HStack(spacing: 15) {
            VStack(alignment: .leading, spacing: 8) {
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
                        print("Favoritou")
                        
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
                    .foregroundColor(.accentColor)
                    .cornerRadius(27)
            }
            .padding(.trailing,24)
        }
        .background(Color.accentColor)
        .cornerRadius(16)
        .foregroundColor(.white)
        .shadow(color: .black.opacity(0.25), radius: 4, x: 0 , y: 4)
        .padding(.top, 12)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
