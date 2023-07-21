//
//  NewsView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct NewsView: View {
    var body: some View {
        VStack(alignment: .leading){
            NavigationLink{
                NewsDetailView()
            } label: {
                HStack{
                    Text("Stay Informed! \(Image(systemName: "arrow.right.circle.fill"))")
                        .fontWeight(.bold)
                        .font(.system(size: 16))
                        .foregroundColor(Color("Primary"))
                        .padding(.leading, 20)
                        .padding(.top, 10)

                    Spacer()
                }
            }
            
            HStack{
                Text("Get latest update from MRT Jakarta!!")
                    .fontWeight(.medium)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .padding(.top, -6)
                    .padding(.leading, 20)
                Spacer()
            }
            
            NewsScrollView(imageNames: imageNews)

        }
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        NewsView()
    }
}
