//
//  ContentView.swift
//  MartiQR
//
//  Created by James Jeremia on 13/07/23.
//

import SwiftUI
import UIKit
import PassKit

struct ContentView: View {
    @ObservedObject private var viewModel = UserViewModel()
    
    var body: some View {
        VStack {

            Text(viewModel.tapIn)
            Text(viewModel.tapOut)
            Button(action: {
                showPassbook()
            }) {
                Text("Open Pass")
            }
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

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PassViewController: UIViewControllerRepresentable {
    var fileURL: URL

    func makeUIViewController(context: Context) -> UIViewController {
        let passController = PKAddPassesViewController(pass: passFromURL())
        passController!.delegate = context.coordinator
        return passController!
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // No need to update the view controller
    }

    func makeCoordinator() -> Coordinator {
        Coordinator()
    }

    class Coordinator: NSObject, PKAddPassesViewControllerDelegate {
        // Implement any required delegate methods if needed
    }


    private func passFromURL() -> PKPass {
        guard let passData = try? Data(contentsOf: fileURL),
              let pass = try? PKPass(data: passData)
        else {
            fatalError("Failed to create PKPass from file URL.")
        }
        return pass
    }
}

