//
//  About.swift
//  CoferenceApp
//
//  Created by Eduardo Dalencon on 11/04/23.
//

import SwiftUI
let numbers = [1, 2, 3, 4, 5]

struct About: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            FlippableCardView()
                .frame(width: 270,height:390)
                .shadow(color: Color.black.opacity(0.1), radius: 15, x: 0, y: 10)
//
            
            VStack(alignment:.leading,spacing: 25){
                Text("My talks @ WWDC23")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing: 10){
                        ForEach(numbers, id: \.self) { number in
                            EventCard(width:0.6)
                        }
                    }
                    
                    
                }
                
                
            }
            .padding(.top,40)
        }
        .padding(20)
        .padding(.top,40)
        .background(Color(uiColor: UIColor.secondarySystemBackground).edgesIgnoringSafeArea(.all))
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
