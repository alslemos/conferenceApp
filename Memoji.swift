//
//  Memoji.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 10/04/23.
//

import SwiftUI

struct Memoji: View {
    @State private var isActive1: Bool = false
    @State private var isActive2: Bool = false
    var body: some View {
        NavigationLink(destination: ColorPage()){
            VStack {
                Text("Time to show us your Memoji")
                    .font(.system(size: 48))
                    .multilineTextAlignment(.center)
                    .frame(width: 274, height: 180)
                    .bold()
                    .padding(.top, 44.0)
                    .foregroundColor(.black)
                
                
                Image("memoji")
                    .resizable()
                    .frame(width: 550, height: 390)
                
                Button("Create one"){
                    
                }
                .foregroundColor(.white)
                .font(.title)
                .bold()
                .padding(.all)
                .background(Color(.systemBlue))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                .padding(.bottom)
               
               
                Button("Select from phone"){
                    
                }
                .foregroundColor(.white)
                .font(.title)
                .bold()
                .padding(.all)
                .background(Color(.systemBlue))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                .padding(.bottom, 43.0)
            
            }
        }
      
          
            
        }
}
    

struct Memoji_Previews: PreviewProvider {
    static var previews: some View {
        Memoji()
    }
}
