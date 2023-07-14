//
//  PassViewController.swift
//  MartiQR
//
//  Created by James Jeremia on 14/07/23.
//

import Foundation
import SwiftUI
import UIKit
import PassKit

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
