//
//  AttractionScrollView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

let imageAttraction = ["attraction-1", "attraction-2"]

struct AttractionScrollView: View {
    let imageNames: [String]
    @State private var currentPage = 0
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                ScrollViewReader { scrollViewProxy in
                    HStack(spacing: 0) {
                        ForEach(imageNames, id: \.self) { imageName in
                            BannerView(imageName: imageName)
                                .id(imageName)
                        }
                    }
                    .offset(x: -CGFloat(currentPage) * 140, y: 0) // Adjust the offset based on the currentPage
                    .animation(.easeInOut) // Add animation to make it smooth
                    .onChange(of: currentPage) { newPage in
                        // Scroll to the newly selected page when currentPage changes
                        withAnimation {
                            scrollViewProxy.scrollTo(newPage, anchor: .leading)
                        }
                    }
                }
            }
            
            // Indicator buttons
            HStack(spacing: 10) {
                ForEach(0..<imageNames.count, id: \.self) { index in
                    Circle()
                        .frame(width: 8, height: 8)
                        .foregroundColor(currentPage == index ? Color("Primary") : .gray)
                        .overlay(
                            Circle()
                                .stroke(Color.blue, lineWidth: 1)
                                .opacity(currentPage == index ? 0.5 : 0)
                        )
                        .onTapGesture {
                            // Respond to indicator button tap and update the currentPage
                            currentPage = index
                        }
                }
            }
            .padding(.top, 10)
        }.padding(.top, 10)
        .padding(.leading, 20)

    }
}

struct AttractionScrollView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionScrollView(imageNames: imageAttraction)
    }
}

