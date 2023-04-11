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
        NavigationView{
            ScrollView{
                VStack(spacing:0){
                    Image("perfil")
                    Text("Hello,")
                        .font(.largeTitle)
                        .bold()
                    Text("Julia")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    
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
                        HStack(spacing: 10){
                            ForEach(numbers, id: \.self) { number in
                                NewsItem()
                            }
                        }
                        
                        
                        
                    }
                    
                    
                }
                .padding(.top,10)
                
            }
            
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
