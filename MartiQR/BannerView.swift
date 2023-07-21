//
//  BannerView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

let imageBanner = ["banner-1", "banner-2", "banner-3"]

struct BannerScrollView: View {
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
    }
}

struct BannerView: View {
    let imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .cornerRadius(11)
            .frame(width: 190, height: 107)
            .padding(.horizontal, 10)
    }
}


struct BannerViewScroll_Previews: PreviewProvider {
    static var previews: some View {
        BannerScrollView(imageNames: imageBanner)
    }
}
