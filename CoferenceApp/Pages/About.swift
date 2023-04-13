//
//  About.swift
//  CoferenceApp
//
//  Created by Eduardo Dalencon on 11/04/23.
//

import SwiftUI
let numbers = [1, 2, 3, 4, 5]

struct About: View {
    @EnvironmentObject var viewModel: ViewModel
    var event: Event
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            FlippableCardView(speaker: event.speaker)
                .frame(width: 270,height:390)
                .shadow(color: Color.black.opacity(0.1), radius: 15, x: 0, y: 10)
//
            
            VStack(alignment:.leading,spacing: 25){
                Text("My talks @ WWDC23")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing: 10){
                        ForEach(event.speaker.events, id: \.id) { event in
                            EventCardItem(event: event)
                                .environmentObject(viewModel)
                        }
                    }
                }
            }
            .padding(.top,40)
        }
        .padding(20)
        .padding(.top,40)
        .background(Color(uiColor: UIColor.secondarySystemBackground).edgesIgnoringSafeArea(.all))
            .edgesIgnoringSafeArea(.all)
    }
}
