//
//  Number.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 11/04/23.
//

import SwiftUI

struct Number: View{
    var body: some View {
        VStack{
            Text("Let's get you signed up")
                .font(.system(size: 48))
                .multilineTextAlignment(.center)
                .frame(width: 290, height: 180)
                .bold()
                .padding(.top, 44.0)
            List{
                HStack{
                    Text("🇧🇷+55")
                    Text("Phone Number")
                   
                }
            }
            
            Text("By entering your number, you’re agreeing to our Terms & Conditions and Privacy Policy")
                
        }
    }
}

struct Number_Previews: PreviewProvider {
    static var previews: some View {
        Number()
    }
}
