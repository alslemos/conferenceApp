//
//  QRcode.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 10/04/23.
//

import SwiftUI
import UIKit



struct QRcode: View {
    @State private var isShowingCamera = false
   // @State private var isTapped = false
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: Nationality()){
                VStack {
                    Image("Group")
                        .resizable()
                        .frame(width: 290, height: 90)
                        .padding(.vertical, 21.0)
                    Text("Please scan your QR code below")
                        .font(.system(size: 48))
                        .multilineTextAlignment(.center)
                        .frame(width: 274, height: 180)
                        .bold()
                        .padding(.top, 11.0)
                        .foregroundColor(.black)
                    
                    
                    ZStack {
                        
                        
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 282, height: 350)
                            .foregroundColor(.white)
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.black, lineWidth: 1)
                            .padding(.all, 40)
                        
                        Button("Open Camera") {
                            isShowingCamera = true
                        }
                    }
                }
            }
        }
        
        .sheet(isPresented: $isShowingCamera) {
            CameraView()
        }
        
        
        
    }
}

struct CameraView: UIViewControllerRepresentable {
    typealias UIViewControllerType = UIImagePickerController

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = .camera
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {

    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
       
    }
}








struct QRcode_Previews: PreviewProvider {
    
    static var previews: some View {
        QRcode()
       
    }
}
