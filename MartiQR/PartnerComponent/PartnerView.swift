//
//  PartnerView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct PartnerView: View {
    var body: some View {
        VStack(alignment: .leading){
            NavigationLink{
                PartnerDetailView(partners: partnersMRT)
            } label: {
                HStack{
                    Text("Check this out \(Image(systemName: "arrow.right.circle.fill"))")
                        .fontWeight(.bold)
                        .font(.system(size: 16))
                        .foregroundColor(Color("Primary"))
                        .padding(.leading, 20)
                        .padding(.top, 10)

                    Spacer()
                }
            }
            
            HStack{
                Text("New Level in Style!")
                    .fontWeight(.medium)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .padding(.top, -6)
                    .padding(.leading, 20)
                Spacer()
            }
        }
        PartnerCardView(partners: partnersMRT)
    }
}

struct PartnerView_Previews: PreviewProvider {
    static var previews: some View {
        PartnerView()
    }
}
