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
            MRTPassView()
            Text(viewModel.tapIn)
            Text(viewModel.tapOut)

        }
        .padding()
        .task {
            self.viewModel.fetchData()
        }

    }


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

