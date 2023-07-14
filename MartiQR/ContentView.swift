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

    
    var body: some View {
        VStack {
            MRTPassView()
        }
        .padding()
    }


}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

