//
//  QRcode.swift
//  CoferenceApp
//
//  Created by Madu Maciel on 10/04/23.
//

import SwiftUI
import UIKit
import AVFoundation


struct QRcode: View {
    @State private var isShowingCamera = false
   // @Environment(\.colorScheme) var colorScheme
   // @State private var isTapped = false
    
    var body: some View {
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
                        //.foregroundColor(self.colorScheme == .dark ? .white : .black)
                    
                    
                    ZStack {
                        
                        if self.isShowingCamera {
                            FullCameraView()
                        }
                        else {
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
                }.navigationBarBackButtonHidden(true)
        }
        
//        .sheet(isPresented: $isShowingCamera) {
//
//        }
        
        
        
    }
}

class ViewController: UIViewController {
    private var permissionGranted = false // Flag for permission

    private let captureSession = AVCaptureSession()
    private let sessionQueue = DispatchQueue(label: "sessionQueue")

    private var previewLayer = AVCaptureVideoPreviewLayer()
    var screenRect: CGRect! = nil // For view dimensions
    
    override func viewDidLoad() {
        self.checkPermission()
        
        self.sessionQueue.async { [unowned self] in
            guard permissionGranted else { return }
            self.setupCaptureSession()
            self.captureSession.startRunning()
        }
        
        self.screenRect = UIScreen.main.bounds

        self.previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        self.previewLayer.frame = CGRect(x: UIScreen.main.bounds.width * 0.15, y: UIScreen.main.bounds.height * 0.05, width: 282, height: 350)
        self.previewLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill // Fill screen
        self.previewLayer.cornerRadius = 24

        self.previewLayer.connection?.videoOrientation = .portrait
        
        DispatchQueue.main.async { [weak self] in
            self!.view.layer.addSublayer(self!.previewLayer)
        }
    }
    
    override func willTransition(to newCollection: UITraitCollection, with coordinator: UIViewControllerTransitionCoordinator) {
        self.screenRect = UIScreen.main.bounds
        self.previewLayer.frame = CGRect(x: 0, y: 0, width: screenRect.size.width, height: screenRect.size.height)

        switch UIDevice.current.orientation {
            // Home button on top
            case UIDeviceOrientation.portraitUpsideDown:
                self.previewLayer.connection?.videoOrientation = .portraitUpsideDown
                     
            // Home button on right
            case UIDeviceOrientation.landscapeLeft:
                self.previewLayer.connection?.videoOrientation = .landscapeRight
                    
            // Home button on left
            case UIDeviceOrientation.landscapeRight:
                self.previewLayer.connection?.videoOrientation = .landscapeLeft
                     
            // Home button at bottom
            case UIDeviceOrientation.portrait:
                self.previewLayer.connection?.videoOrientation = .portrait
                        
            default:
                break
        }
    }
    
    func checkPermission() {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
            // Permission has been granted before
            case .authorized:
                permissionGranted = true
                    
            // Permission has not been requested yet
            case .notDetermined:
                self.requestPermission()
                        
            default:
                permissionGranted = false
        }
    }
    
    func requestPermission() {
        self.sessionQueue.suspend()
        AVCaptureDevice.requestAccess(for: .video) { [unowned self] granted in
            self.permissionGranted = granted
            self.sessionQueue.resume()
        }
    }
    
    func setupCaptureSession() {
        // Access camera
        guard let videoDevice = AVCaptureDevice.default(.builtInDualWideCamera,for: .video, position: .back) else { return }
        guard let videoDeviceInput = try? AVCaptureDeviceInput(device: videoDevice) else { return }
            
        guard captureSession.canAddInput(videoDeviceInput) else { return }
        captureSession.addInput(videoDeviceInput)
                          
        // TODO: Add preview layer
    }
}

struct FullCameraView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        return ViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
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
