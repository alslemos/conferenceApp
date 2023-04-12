//
//  Nationality.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 10/04/23.
//

import SwiftUI

struct Nationality: View {
    let countries: [Countries] = [
        Countries(name:"🇧🇸 Bahamas"),
        Countries(name: "🇧🇭 Bahrain"),
        Countries(name: "🇧🇩 Bangladesh"),
        Countries(name: "🇧🇧 Barbados"),
        Countries(name: "🇧🇾 Belarus"),
        Countries(name: "🇧🇪 Belgium"),
        Countries(name: "🇧🇿 Belize"),
        Countries(name: "🇧🇯 Benin"),
        Countries(name: "🇧🇹 Bhutan"),
        Countries(name: "🇧🇴 Bolivia"),
        Countries(name: "🇧🇦 Bosnia & Herzegovina"),
        Countries(name: "🇧🇼 Botswana"),
        Countries(name: "🇧🇷 Brazil")
    ]
    var body: some View {
       
            NavigationLink(destination: Number()){
                
                VStack {
                    Text("What is your nationality?")
                        .font(.system(size: 48))
                        .multilineTextAlignment(.center)
                        .frame(width: 274, height: 180)
                        .bold()
                        .foregroundColor(.black)
                        .padding(.bottom, -10.0)
                    
                    Spacer()
                    List{
                        ForEach(countries, id:\.self) { country in
                            HStack {
                                Text(country.name)
                                    .foregroundColor(.black)
                                Spacer()
                                Image(systemName:"chevron.right")
                                    .foregroundColor(Color(red: 0.49, green: 0.49, blue: 0.49))
                            }
                            
                        }
                        
                    }
                } .background(Color(UIColor.secondarySystemBackground))
            }
        
        
     }
    }
  

struct Nationality_Previews: PreviewProvider {
    static var previews: some View {
        Nationality()
    }
}
        
