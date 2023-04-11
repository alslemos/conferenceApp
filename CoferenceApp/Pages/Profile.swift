//
//  Profile.swift
//  CoferenceApp
//
//  Created by Filipe Ilunga on 10/04/23.
//

import SwiftUI

struct Profile: View {
    let configs: [String] = ["Settings", "App Information", "Privacy & Security", "Log Out"]
    var body: some View {
        VStack{
            
            
            HStack(alignment: .top){
                Image(systemName: "apple.logo").font(.title2)
                Text("WWDC23").font(.title2).bold()
                
            }
            Spacer(minLength: 15)
        
            Image("perfil")
                .clipShape(Circle())
            Spacer()
            List {
                
                ForEach(configs, id: \.self) { item in
                    
                    HStack {
                        Text(item).foregroundColor(.black)
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                }
            }
        }
        .padding(.top,40)
        .background(Color(uiColor: UIColor.secondarySystemBackground).edgesIgnoringSafeArea(.all))
        
        
    }
}


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
