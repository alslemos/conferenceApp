//
//  Number.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 11/04/23.
//

import SwiftUI

struct Number: View{
    var body: some View {
        NavigationLink(destination: EnterCode()){
            VStack{
                Text("Let's get you signed up")
                    .font(.system(size: 48))
                    .multilineTextAlignment(.center)
                    .frame(width: 290, height: 180)
                    .bold()
                    .foregroundColor(.black)
                    .padding(.bottom, -20.0)
                
                List{
                    HStack{
                        Text("🇧🇷 +55")
                            .padding(.horizontal, 16.0)
                        Text("Phone Number")
                    }
                }
                VStack{
                    Text("By entering your number, you’re agreeing to our ")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                    Text("Terms & Conditions and Privacy Policy")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                        .bold()
                        .padding(.bottom, 420)
                }
            }
            
            .background(Color(uiColor: UIColor.secondarySystemBackground)
                .edgesIgnoringSafeArea(.all))
        }
    }
}

struct Number_Previews: PreviewProvider {
    static var previews: some View {
        Number()
    }
}
