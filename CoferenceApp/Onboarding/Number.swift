//
//  Number.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 11/04/23.
//

import SwiftUI
import Combine

struct Number: View {
    @State var phoneNumber: String = " "
    var countriesPhoneCode: [String] = ["🇧🇸 +1", "🇧🇭 +973", "🇧🇩 +880", "🇧🇧 +246", "🇧🇾 +375", "🇧🇪 +32", "🇧🇿 +501", "🇧🇯 +229", "🇧🇹 +975", "🇧🇴 +591", "🇧🇦 +387", "🇧🇼 +267", "🇧🇷 +55", "🇧🇫 +226", "🇧🇮 +257", "🇨🇻 +238", "🇰🇭 +855", "🇨🇲 +237", "🇨🇦 +1", "🇨🇫 +236", "🇹🇩 +235", "🇨🇱 +56", "🇨🇳 +86", "🇨🇴 +57", "🇰🇲 +269", "🇨🇬 +242", "🇨🇩 +243", "🇨🇷 +506", "🇨🇮 +225"]
    @State var selectedCountry: String = "🇧🇷 +55"
    
    var body: some View {
        VStack {
            Text("Let's get you signed up")
                .font(.system(size: 48))
                .multilineTextAlignment(.center)
                .frame(width: 290, height: 180)
                .bold()
                .foregroundColor(.black)
                .padding(.bottom, -20.0)
            
            Form {
                Section {
                    HStack {
                        Menu(selectedCountry) {
                            ForEach(countriesPhoneCode, id: \.self) { country in
                                Button {
                                    selectedCountry = country
                                } label: {
                                    Text(country)
                                }
                            }
                        }
                        .foregroundColor(.black)
                        .font(.caption)
                        TextField("Phone Number", text: $phoneNumber)
                            .keyboardType(.phonePad)
                            .onReceive(Just(phoneNumber)) {_ in limitText(11)}

                    }
                    
                } footer: {
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
                    .padding(.top, 16)
                }
                
              
            }
            NavigationLink {
                EnterCode()
            } label: {
                Color.red.opacity(0)
                    .frame(width: 300, height: 300)
            }
           
        } .background(Color(uiColor: UIColor.secondarySystemBackground)
            .edgesIgnoringSafeArea(.all))
        .ignoresSafeArea(.keyboard, edges: .bottom)
        .navigationBarBackButtonHidden(true)
        .scrollDisabled(true)
    }
    
    func limitText(_ upper: Int) {
           if phoneNumber.count > upper {
               phoneNumber = String(phoneNumber.prefix(upper))
           }
       }
}

struct Number_Previews: PreviewProvider {
    static var previews: some View {
        Number()
    }
}
