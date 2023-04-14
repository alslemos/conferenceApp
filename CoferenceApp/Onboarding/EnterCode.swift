//
//  EnterCode.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 11/04/23.
//

import SwiftUI
import Combine

struct EnterCode: View{
    @State var confirmationCode: String = ""
    var body: some View{
        NavigationStack{
            VStack{
                Text("Enter the code we just texted you")
                    .font(.system(size: 40))
                    .multilineTextAlignment(.center)
                    .bold()
                    .foregroundColor(.black)
                    .padding(.top, 30)
                
                VStack {
                    TextField("", text: $confirmationCode)
                        .customTextField(padding: 38)
                        .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
                        .keyboardType(.numberPad)
                        .background(Color.white)
                        .cornerRadius(14)
                        .kerning(41)
                        .font(.title3)
                        .onReceive(Just(confirmationCode)) {_ in limitText(6)}

                    HStack(spacing: 10) {
                        ForEach(0..<6) { index in
                            Rectangle()
                                .frame(width: 40, height: 2)
                                .foregroundColor(.gray)
                                .opacity(index < confirmationCode.count ? 1 : 0.3)
                        }
                    }.padding(.top, -18)
                    
                }.padding(.horizontal, 20)
                Spacer()
                
                NavigationLink {
                    Memoji()
                } label: {
                    Color.red.opacity(0)
                        .frame(width: 300, height: 300)
                }
                
            }
            .background(Color(uiColor: UIColor.secondarySystemBackground)
                .edgesIgnoringSafeArea(.all))
           
        }.navigationBarBackButtonHidden(true)
            .onAppear {
                let content = UNMutableNotificationContent()
                content.title = "Your WWDC phone code is here"
                content.body = "246398"
                content.sound = UNNotificationSound.default

                // show this notification five seconds from now
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)

                // choose a random identifier
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

                // add our notification request
                UNUserNotificationCenter.current().add(request)
            }
        
    }
    
    func limitText(_ upper: Int) {
           if confirmationCode.count > upper {
               confirmationCode = String(confirmationCode.prefix(upper))
           }
       }
}



struct EnterCode_Previews: PreviewProvider {
    static var previews: some View {
        EnterCode()
    }
}

struct TextFieldModifier: ViewModifier {
    let padding: CGFloat

    func body(content: Content) -> some View {
        content
            .padding(.leading, padding)
    }
}

extension View {
    func customTextField(padding: CGFloat = 3) -> some View {
        self.modifier(TextFieldModifier(padding: padding))
    }
}
