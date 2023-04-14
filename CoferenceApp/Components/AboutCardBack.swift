//
//  AboutCard.swift
//  CoferenceApp
//
//  Created by Eduardo Dalencon on 11/04/23.
//

import SwiftUI

struct AboutCardBack: View {
    @Binding var degree : Double
    var body: some View {
        VStack(spacing:40){
            Rectangle()
                
                .frame(width:114,height: 8)
                       .cornerRadius(2.5)
                       .foregroundColor(Color(uiColor: UIColor.secondarySystemBackground))
                       .padding(.top,15)
            
            Text("I've been working as a Senior Design, Siri Producer at Apple for 10 years. As an Apple designer, I'm likely involved in creating and developing innovative products, such as iPhones, iPads, and Mac computers. Apple is very known for its commitment to design excellence, and its products are recognized for their sleek and minimalist aesthetics. Apple's design philosophy has been instrumental in shaping the way people interact with technology, and I'm likely playing an important role in shaping the company's future product offerings.")
                .font(.footnote)
                .frame(height:282)
                
        }
        .padding(15)
        .padding(.horizontal,5)
        .background(.white)
        .frame(width:.infinity, height:.infinity)
        .cornerRadius(20)
        .rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
    }
}

//struct AboutCardBack_Previews: PreviewProvider {
//    static var previews: some View {
//        AboutCardBack()
//    }
//}

