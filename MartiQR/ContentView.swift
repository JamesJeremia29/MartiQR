//
//  ContentView.swift
//  MartiQR
//
//  Created by James Jeremia on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("isSignedIn") var isSignedIn: Bool = true
    @EnvironmentObject private var viewModel: UserViewModel
    @State private var selectedTab = 0

    
    var body: some View {
                if isSignedIn{
                    TabView(selection: $selectedTab) {
                        // Tab 1
                        NavigationView {
                            VStack {
                                ExploreView().environmentObject(viewModel)
                            }
                        }
                        .tabItem {
                            Image(systemName: "shoeprints.fill")
                            Text("Explore")
                        }
                        .tag(0)
                        
                        // Tab 2
                        NavigationView {
                            VStack {
                                MRTPassView().environmentObject(viewModel)
                            }
                        }
                        .tabItem {
                            Image(systemName: "qrcode")
                            Text("MartiPass")
                        }
                        .tag(1)
                        
                        // Tab 3
                        NavigationView {
                            VStack {
                                Text("Profile")
                                // Add your custom view for Tab 3 here
                            }
                        }
                        .tabItem {
                            Image(systemName: "person")
                            Text("Profile")
                        }
                        .tag(2)
                    }
                } else {
                    SignInAppleIdButton()
                }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserViewModel())
    }
}

