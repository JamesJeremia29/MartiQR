//
//  MartiQRApp.swift
//  MartiQR
//
//  Created by James Jeremia on 13/07/23.
//

import SwiftUI
import FirebaseCore

class appDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct MartiQRApp: App {

    @UIApplicationDelegateAdaptor(appDelegate.self) var delegate
    var body: some Scene {
        
        WindowGroup {
            ContentView()
        }
    }
}
