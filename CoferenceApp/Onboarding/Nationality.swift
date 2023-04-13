//
//  Nationality.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 10/04/23.
//

import SwiftUI

struct Nationality: View {
    let countries: [Countries] = [
        Countries(name:"Bahamas", flag: "🇧🇸", phoneCode: "+1"),
        Countries(name: "Bahrain", flag: "🇧🇭", phoneCode: "+973"),
        Countries(name: "Bangladesh", flag: "🇧🇩", phoneCode: "+880"),
        Countries(name: "Barbados", flag: "🇧🇧", phoneCode: "+1"),
        Countries(name: "Belarus", flag: "🇧🇾", phoneCode: "+375"),
        Countries(name: "Belgium", flag: "🇧🇪", phoneCode: "+32"),
        Countries(name: "Belize", flag: "🇧🇿", phoneCode: "+501"),
        Countries(name: "Benin", flag: "🇧🇯", phoneCode: "+229"),
        Countries(name: "Bhutan", flag: "🇧🇹", phoneCode: "+975"),
        Countries(name: "Bolivia", flag: "🇧🇴", phoneCode: "+591"),
        Countries(name: "Bosnia & Herzegovina", flag: "🇧🇦", phoneCode: "+387"),
        Countries(name: "Botswana", flag: "🇧🇼", phoneCode: "+267"),
        Countries(name: "Brazil", flag: "🇧🇷", phoneCode: "+55")
    ]
    
    var body: some View {
            VStack {
                Text("What is your nationality?")
                    .font(.system(size: 48))
                    .multilineTextAlignment(.center)
                    .frame(width: 274, height: 180)
                    .bold()
                    .foregroundColor(.black)
                
                List{
                    ForEach(countries, id:\.self) { country in
                        
                        NavigationLink {
                            Number(selectedCountry: "\(country.flag) \(country.phoneCode)")
                        } label: {
                            HStack {
                                Text("\(country.flag) \(country.name)")
                                    .foregroundColor(.black)
                            }
                        }
                    }
                }.padding(.top, -40)
                Spacer()
            }.background(Color(UIColor.secondarySystemBackground))
                .navigationBarBackButtonHidden(true)
        }
}


struct Nationality_Previews: PreviewProvider {
    static var previews: some View {
        Nationality()
    }
}

