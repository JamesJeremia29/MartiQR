//
//  AddToWalletButton.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct AddToWalletButton: View {
    var body: some View {
        Button(action: {
            showPassbook()
        }) {
            Image("AddWalletButton")
        }    }
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

struct AddToWalletButton_Previews: PreviewProvider {
    static var previews: some View {
        AddToWalletButton()
    }
}
