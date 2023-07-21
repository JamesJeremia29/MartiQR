//
//  PromoView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct PromoView: View {
    var body: some View {
        VStack(alignment: .leading){
            NavigationLink{
                PromoDetailView()
            } label: {
                HStack{
                    Text("Discover Exciting Promos! \(Image(systemName: "arrow.right.circle.fill"))")
                        .fontWeight(.bold)
                        .font(.system(size: 16))
                        .foregroundColor(Color("Primary"))
                        .padding(.leading, 20)
                        .padding(.top, 10)

                    Spacer()
                }
            }
            
            HStack{
                Text("Recommended deals you don’t want to miss!")
                    .fontWeight(.medium)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .padding(.top, -6)
                    .padding(.leading, 20)
                Spacer()
            }
            
            PromoScrollView(imageNames: imagePromo)
            
        }

    }
}

struct PromoView_Previews: PreviewProvider {
    static var previews: some View {
        PromoView()
    }
}
