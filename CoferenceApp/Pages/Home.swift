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
        
            ScrollView{
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
                    
                    ScrollView(.horizontal){
                        HStack(spacing: 15){
                            ForEach(numbers, id: \.self) { number in
                                NewsItem()
                            }
                        }
                        
                        
                    }
                    
                    
                }
                .padding(.top,20)
                
                VStack(alignment:.leading){
                    Text("Favorite events")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    ScrollView(.horizontal){
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
                        EventCard()
                            
                    }
                }.frame(maxWidth: .infinity,alignment: .leading)
                    .padding(.leading,0)
                
                
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
