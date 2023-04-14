//
//  FlippableCard.swift
//  CoferenceApp
//
//  Created by Eduardo Dalencon on 11/04/23.
//

import SwiftUI

struct FlippableCardView: View {
    @State var backDegree = 0.0
    @State var frontDegree = -90.0
    let durationAndDelay : CGFloat = 0.3
    var speaker: Speaker
    @State private var isFlipped = false
    
    var body: some View {
        ZStack {
            AboutCard(degree: $backDegree, speaker: speaker)
            AboutCardBack(degree: $frontDegree)
        }
        .onTapGesture {
            withAnimation(.easeInOut(duration: 0.9)) {
                flipCard ()
            }
        }
    }
    
    func flipCard () {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationAndDelay)) {
                backDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            }
        } else {
            withAnimation(.linear(duration: durationAndDelay)) {
                frontDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                backDegree = 0
            }
        }
    }
    
}

