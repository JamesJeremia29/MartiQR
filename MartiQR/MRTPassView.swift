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
import FirebaseFirestore


struct MRTPassView: View {
    
    
    @AppStorage("hashId") var hashId: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
//    let hashName = "NathaniaWiranda"
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    private var db = Firestore.firestore()
    
    @EnvironmentObject private var viewModel: UserViewModel
    
    var body: some View {
        VStack(){
            
            Text("MartiPass")
                .padding(.leading, 30)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.system(.title, weight: .semibold))
            ZStack {
                Rectangle()
                    .stroke(Color.black, lineWidth: 4)
                    .cornerRadius(5)
                
                Image(uiImage: generateQRCode(from: "\(hashId)"))
                    .resizable()
                    .scaledToFit()
                    .padding(.all, 10)
            }
            .frame(width: 300, height: 300)
            .padding(.all)
            
            HStack{
                Image(systemName: "person.fill")
                Text("\(firstName) \(lastName)")
//                Text("James Jeremia")
            }.padding(.all)
                .padding(.bottom, 20)
            
            //            Text(viewModel.tapIn).font(.system(size: 14))
            //                .foregroundColor(.black)
            //                .padding(.all,5)
            //                .background(Color.green)
            //            Text(viewModel.tapOut).font(.system(size: 14))                .foregroundColor(.black)
            //                .padding(.all,5)
            //                .background(Color.red)
            //
            
            AddToWalletButton()
            
            
            Text("Add MartiPass to Apple Wallet to show your QR Code on Apple Watch")
                .font(.system(size: 10))
                .foregroundColor(Color("DisabledText"))
                .frame(width: 200, alignment: .center)
                .multilineTextAlignment(.center)
                .padding(.all)
            
        }
        .onAppear{
            if hashId.isEmpty {
//                hashId = generateSHA256Hash(from: hashName)
                hashId = generateHashFromName(firstName: firstName, lastName: lastName)
                UserDefaults.standard.set(hashId, forKey: "hashId")
//                if let savedHashId = UserDefaults.standard.string(forKey: "hashId") {
//                    hashId = savedHashId
//                }
//            else {
//
//                }
            }
            
        }
        .padding()
        .onAppear {
            self.viewModel.fetchData()
            if !hashId.isEmpty {
                let documentRef = db.collection("users").document(hashId)
                documentRef.getDocument { (document, error) in
                    if let document = document, !document.exists {
                        documentRef.setData([
                            "tapIn": "",
                            "tapOut": ""
                        ]) { error in
                            if let error = error {
                                print("Error writing document: \(error)")
                            } else {
                                print("Document successfully written!")
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    func generateQRCode(from string: String) -> UIImage {
        let data = string.data(using: .utf8)!
        
        // Increase the size of the generated CIImage
        filter.setValue(data, forKey: "inputMessage")
        filter.setValue("H", forKey: "inputCorrectionLevel")
        let transformedImage = filter.outputImage?.transformed(by: CGAffineTransform(scaleX: 10, y: 10))
        
        if let outputImage = transformedImage {
            let cgImage = context.createCGImage(outputImage, from: outputImage.extent)
            if let cgimg = cgImage {
                // Adjust the scaling factor for the UIImage
                let scale = UIScreen.main.scale
                let uiImage = UIImage(cgImage: cgimg, scale: scale, orientation: .up)
                return uiImage
            }
        }
        
        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
    
    func generateSHA256Hash(from text: String) -> String {
        guard let data = text.data(using: .utf8) else { return "" }
        
        var hashId = [UInt8](repeating: 0, count: Int(CC_SHA256_DIGEST_LENGTH))
        
        _ = data.withUnsafeBytes { buffer in
            CC_SHA256(buffer.baseAddress, CC_LONG(data.count), &hashId)
        }
        
        let hashData = Data(bytes: hashId)
        let hashString = hashData.map { String(format: "%02hhx", $0) }.joined()
        
        return hashString
    }
    func generateHashFromName(firstName: String, lastName: String) -> String {
        let combinedString = "\(firstName) \(lastName)"
        return generateSHA256Hash(from: combinedString)
    }
}

struct MRTPassView_Previews: PreviewProvider {
    static var previews: some View {
        MRTPassView().environmentObject(UserViewModel())
    }
}
