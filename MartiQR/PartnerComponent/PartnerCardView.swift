//
//  PartnerCardView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct Partner: Hashable {
    var partnerName: String
    var partnerImage: String
    var partnerDescription: String
    var sector: String
}

struct PartnerCardView: View {
    
    var partners: [Partner]
    
    var body: some View {
            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 10) {
                    ForEach(partners, id: \.self) { partner in
                        VStack {
                            ZStack {
                                Rectangle()
                                    .frame(width: 130, height: 80)
                                    .foregroundColor(.gray)
                                    .opacity(0.2)
                                    .cornerRadius(11)
                                
                                Image(partner.partnerImage)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 120, height: 70)
                            }
                            
                            HStack {
                                Text(partner.sector)
                                    .fontWeight(.medium)
                                    .font(.system(size: 8))
                                    .foregroundColor(.gray)
                                    .padding(.vertical, -2)
                                Spacer()
                            }
                            
                            HStack {
                                Text(partner.partnerName)
                                    .fontWeight(.medium)
                                    .font(.system(size: 12))
                                    .foregroundColor(.black)
                                    .padding(.vertical, -2)
                                Spacer()
                            }
                            
                            HStack {
                                Text(partner.partnerDescription)
                                    .fontWeight(.light)
                                    .font(.system(size: 7))
                                    .foregroundColor(.gray)
                                Spacer()
                            }
                            
                        }
                        .frame(width: 125, height: 160)
                        .padding(.trailing, 15)
                    }
                }
                .padding(.horizontal, 20) // Add horizontal padding to the HStack
            }
        }
}

struct PartnerCardView_Previews: PreviewProvider {
    static var previews: some View {
        PartnerCardView(partners: partnersMRT)
    }
}
