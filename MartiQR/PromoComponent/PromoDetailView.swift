//
//  PromoDetailView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct PromoDetailView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Discover Exciting Promos!")
                    .fontWeight(.semibold)
                    .font(.system(size: 24))
                    .padding(.leading, 45)
                Spacer()
            }
            
            Image("promo-2")
                .resizable()
                .scaledToFit()
                .frame(width: 315, height: 165)
                .padding(.leading, 10)
                .padding(.vertical, 10)
            
            Image("promo-1")
                .resizable()
                .scaledToFit()
                .frame(width: 315, height: 165)
                .padding(.leading, 10)
                .padding(.vertical, 10)
            Spacer()
        }
    }
}

struct PromoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PromoDetailView()
    }
}
