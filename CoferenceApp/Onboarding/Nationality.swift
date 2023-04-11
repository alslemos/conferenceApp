//
//  Nationality.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 10/04/23.
//

import SwiftUI

struct Nationality: View {
    var body: some View {
        
        VStack {
            Text("What is your nationality?")
                .font(.system(size: 48))
                .multilineTextAlignment(.center)
                .frame(width: 274, height: 180)
                .bold()
                
            Spacer()
            
//                List {
//                    Text("🇦🇿 Azerbaijan")
//                    Text("🇧🇸 Bahamas")
//                    Text("🇧🇭 Bahrain")
//                    Text("🇧🇩 Bangladesh")
//                    Text("🇧🇧 Barbados")
//                    Text("🇧🇾 Belarus")
//                    Text("🇧🇪 Belgium")
//                    Text("🇧🇿 Belize")
//                    Text("🇧🇯 Benin")
//                    Text("🇧🇹 Bhutan")
//                    Text("🇧🇴 Bolivia")
//                    Text("🇧🇦 Bosnia & Herzegovina")
//                    Text("🇧🇼 Botswana")
//                    Text("🇧🇷 Brazil")
//                   }
//                }
            }
        }
}


struct EnterCode: View{
    var body: some View{
        VStack{
            Text("Enter the code we just texted you")
            
        }
    }
}

struct Nationality_Previews: PreviewProvider {
    static var previews: some View {
        Nationality()
    }
}
