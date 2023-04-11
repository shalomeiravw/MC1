//
//  ScanView.swift
//  MC1
//
//  Created by Shalomeira Winata on 01/04/23.
//

import SwiftUI
import AVFoundation

// To make rounded rectangle on specified corners
struct RoundedCorners: View {
    var color: Material = .regularMaterial
    var tl: CGFloat = 0.0
    var tr: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var br: CGFloat = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                
                let w = geometry.size.width
                let h = geometry.size.height
                
                // Make sure we do not exceed the size of the rectangle
                let tr = min(min(self.tr, h/2), w/2)
                let tl = min(min(self.tl, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let br = min(min(self.br, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                path.addLine(to: CGPoint(x: w - tr, y: 0))
                path.addArc(center: CGPoint(x: w - tr, y: tr), radius: tr, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                path.addLine(to: CGPoint(x: w, y: h - br))
                path.addArc(center: CGPoint(x: w - br, y: h - br), radius: br, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                path.addLine(to: CGPoint(x: bl, y: h))
                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                path.addLine(to: CGPoint(x: 0, y: tl))
                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                path.closeSubpath()
            }
            .fill(self.color)
        }
    }
}

struct ScanView: View {
    @StateObject var camera = ScanModel()
    @State private var isShowingSheet = false
    @State var status = "Scanning..."
    @Environment(\.colorScheme) var colorScheme
    
    @State var timeRemaining = 2
    @State var timeRemainingModal = 2
    @State var flag = true
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            ScanPreview(camera: camera)
            VStack{
                Spacer()
                Button(action: {
                    self.isShowingSheet = true
                }, label: {
                        Text(status)
                            .fontWeight(.bold)
                            .padding()
                            .frame(maxWidth: .infinity, maxHeight: 70)
                            .foregroundColor(Color.primary)
                            .background(RoundedCorners(color: .thickMaterial, tl: 20, tr: 20, bl: 0, br: 0))
                })
                .padding(.bottom, 80)
            }
            
            // Timer untuk ganti isi variable dari Scanning ke Apple
            Text("")
                .onReceive(timer) { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    } else if timeRemaining == 0 {
                        status = "Avocado"
                    }
                    if timeRemainingModal > 0 {
                        timeRemainingModal -= 1
                    } else if timeRemainingModal == 0 && flag == true {
                        // flag agar is showing sheetnya nda muncul2 lagi
                        flag = false
                        isShowingSheet = true
                    }
                }
        }
        .onAppear {
            camera.Check()
        }
        .sheet(isPresented: $isShowingSheet) {
            // Isi Modal Sheets
            ModalSheet()
        }
    }
}

class ScanModel: ObservableObject{
    @Published var isTaken = false
    @Published var session = AVCaptureSession()
    @Published var alert = false
    @Published var output = AVCapturePhotoOutput()
    @Published var preview : AVCaptureVideoPreviewLayer!
    
    func Check(){
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        case .authorized:
            setUp()
            return
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video) {
                (status) in
                
                if status{
                    self.setUp()
                }
            }
        case .denied:
            self.alert.toggle()
            return
        default:
            return
        }
    }
    
    func setUp(){
        do{
            self.session.beginConfiguration()
            
            let device = AVCaptureDevice.default(for: .video)
            
            let input = try AVCaptureDeviceInput(device: device!)
            
            if self.session.canAddInput(input){
                self.session.addInput(input)
            }
            
            if self.session.canAddOutput(self.output){
                self.session.addOutput(self.output)
            }
            self.session.commitConfiguration()
        }
        catch{
            print(error.localizedDescription)
        }
    }
}

struct ScanPreview: UIViewRepresentable {
    @ObservedObject var camera : ScanModel
    
    func makeUIView(context: Context) -> UIView {
        let view = UIViewType(frame: UIScreen.main.bounds)
        
        camera.preview = AVCaptureVideoPreviewLayer(session: camera.session)
        camera.preview.frame = view.frame
        
        camera.preview.videoGravity = .resizeAspectFill
        view.layer.addSublayer(camera.preview)
        
        // Viewfinder
        let roundedRectLayer = CAShapeLayer()
        roundedRectLayer.strokeColor = UIColor.white.cgColor
        roundedRectLayer.lineWidth = 6
        roundedRectLayer.opacity = 0.75
        roundedRectLayer.fillColor = UIColor.clear.cgColor
        let cornerRadius: CGFloat = 20
        let path = UIBezierPath(roundedRect: CGRect(x: view.frame.midX - 125, y: view.frame.midY - 175, width: 250, height: 250), cornerRadius: cornerRadius)
        roundedRectLayer.path = path.cgPath
        view.layer.addSublayer(roundedRectLayer)
        
        camera.session.startRunning()
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        camera.preview.frame = uiView.frame
    }
}

//struct ScanView_Previews : PreviewProvider {
//    static vas previews : some view {
//        ScanView()
//    }
//}
