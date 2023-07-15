//
//  MRTPassView.swift
//  MartiQR
//
//  Created by James Jeremia on 14/07/23.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins
import CommonCrypto

struct MRTPassView: View {
    
    @State private var name = "Anonymous"
    @State private var email = "test@test.com"
    @State private var hash: String = "5add98b6f9d22f5c343d74ca7cef000be42e6f6ce4c0a0226a49661a5dd8659a"
    
    let alphabet = "abcdefghijklmnopqrst"
    
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    
    @ObservedObject private var viewModel = UserViewModel()
    
    var body: some View {
        VStack{
            Button("Generate Hash"){
                hash = generateSHA256Hash(from: "\(alphabet.randomElement())")
            }
            
            Image(uiImage: generateQRCode(from: "\(hash)"))
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            Button(action: {
                showPassbook()
            }) {
                Text("Open Pass")
            }
            Text(viewModel.tapIn)
            Text(viewModel.tapOut)
        }
        .padding()
        .task {
            self.viewModel.fetchData()
        }
    }
    func showPassbook() {
        guard let passFileURL = Bundle.main.url(forResource: "Generic", withExtension: "pkpass") else {
            return
        }
        
        DispatchQueue.main.async {
            let passViewController = PassViewController(fileURL: passFileURL)
            let hostingController = UIHostingController(rootView: passViewController)
            
            UIApplication.shared.windows.first?.rootViewController?.present(hostingController, animated: true, completion: nil)
        }
    }
    
    func generateQRCode(from string:String) -> UIImage{
        print(hash)
//        convert string data into a data object
        filter.message = Data(string.utf8)
        if let outputImage = filter.outputImage{
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent){
                return UIImage(cgImage: cgimg)
            }
        }
        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
    
    func generateSHA256Hash(from text: String) -> String {
        guard let data = text.data(using: .utf8) else { return "" }
        
        var hash = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
        
        _ = data.withUnsafeBytes { buffer in
            CC_SHA256(buffer.baseAddress, CC_LONG(data.count), &hash)
        }
        
        let hashData = Data(bytes: hash)
        let hashString = hashData.map { String(format: "%02hhx", $0) }.joined()
        
        return hashString
    }
}

struct MRTPassView_Previews: PreviewProvider {
    static var previews: some View {
        MRTPassView()
    }
}
