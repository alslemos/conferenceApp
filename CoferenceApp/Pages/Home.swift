//
//  Home.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct Home: View {
    let numbers = [1, 2, 3, 4, 5]
    @ObservedObject var viewModel = ViewModel()
    
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
                
                VStack(alignment: .leading){
                    Text("Favorite events")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 20){
                            ForEach(Array(viewModel.favorites), id: \.id) { event in
                                EventCardItem(event: event, isFavorite: viewModel.favorites.contains(event))
                                    .environmentObject(viewModel)
                            }
                        }
                        
                        
                    }
                }
                .padding(.top,20)
                
                VStack(alignment:.leading, spacing:10){
                    
                    Text("Today's full schedule (June 6)")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    ForEach(viewModel.todayEvent, id: \.id) { event in
                        CurrentEventCardItem(event: event, width: 0.90, isFavorite: viewModel.favorites.contains(event))
                            .environmentObject(viewModel)
                    }
                }.frame(maxWidth: .infinity,alignment: .leading)
                .padding(.top,20)
            }
            .padding(20)
            .background(Color(uiColor: UIColor.secondarySystemBackground).edgesIgnoringSafeArea(.all))
   
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
