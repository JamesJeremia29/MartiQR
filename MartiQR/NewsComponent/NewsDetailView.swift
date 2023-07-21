//
//  NewsDetailView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct NewsDetailView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Stay Informed!")
                    .fontWeight(.semibold)
                    .font(.system(size: 24))
                    .padding(.leading, 50)
                Spacer()
            }
            
            Image("news-1")
                .resizable()
                .scaledToFit()
                .frame(width: 315, height: 165)
                .padding(.leading, 10)
                .padding(.vertical, 10)
            
            Image("news-2")
                .resizable()
                .scaledToFit()
                .frame(width: 315, height: 165)
                .padding(.leading, 10)
                .padding(.vertical, 10)
            Spacer()
        }
    }
}

struct NewsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NewsDetailView()
    }
}
