//
//  FlippableCard.swift
//  CoferenceApp
//
//  Created by Eduardo Dalencon on 11/04/23.
//

import SwiftUI

struct FlippableCardView: View {
    @State private var isFlipped = false
    
    var body: some View {
        ZStack {
            if isFlipped {
                AboutCardBack()
                    
                    
                    .opacity(1)
            } else {
                AboutCard()
                    .opacity(1)
            }
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.9)) {
                self.isFlipped.toggle()
            }
        }
        
    }
}

struct FlippableCard_Previews: PreviewProvider {
    static var previews: some View {
        FlippableCardView()
    }
}
