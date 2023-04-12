//
//  EnterCode.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 11/04/23.
//

import SwiftUI

struct EnterCode: View{
    var body: some View{
        NavigationLink(destination: Memoji()){
            VStack{
                Text("Enter the code we just texted you")
                    .font(.system(size: 48))
                    .multilineTextAlignment(.center)
                    .frame(width: 274, height: 180)
                    .bold()
                    .foregroundColor(.black)
                List{
                    Text(" __  __  __  __  __  __    ")
                        .font(.system(size: 35 ))
                        .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49,opacity: 0.30 ))
                    
                        
                }
                HStack{
                    Text("Didn’t get it?")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                        
                    Text("Tap here to resend.")
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                        .bold()
                }
                .padding(.bottom, 400)
            }
            .background(Color(uiColor: UIColor.secondarySystemBackground)
                .edgesIgnoringSafeArea(.all))
            
        }
       
    }
}



struct EnterCode_Previews: PreviewProvider {
    static var previews: some View {
        EnterCode()
    }
}
