//
//  MRTPassView.swift
//  MartiQR
//
//  Created by James Jeremia on 14/07/23.
//

import SwiftUI

struct MRTPassView: View {
    var body: some View {
        VStack{
            Button(action: {
                showPassbook()
            }) {
                Text("Open Pass")
            }
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
}

struct MRTPassView_Previews: PreviewProvider {
    static var previews: some View {
        MRTPassView()
    }
}
