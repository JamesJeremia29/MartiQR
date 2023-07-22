//
//  NearbyPlacesView.swift
//  MartiQR
//
//  Created by James Jeremia on 22/07/23.
//

import SwiftUI

struct NearbyPlacesView: View {
    
    var Places: [Place]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack(alignment: .top, spacing: 5) {
                ForEach(Places, id: \.self) { place in
                    VStack(alignment: .leading) {
                            
                            Image(place.placeImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 120, height: 70)
                                .cornerRadius(10)
                                                

                            Text(place.placeName)
                                .fontWeight(.medium)
                                .font(.system(size: 12))
                                .foregroundColor(.black)
//                                .frame(alignment: .leading)
                                .padding(.vertical, -2)

                            Spacer()
                        
                        
                    }
                    .frame(width: 125, height: 120)
                    .padding(.trailing, 15)
                }
            }
            .padding(.horizontal, 20) // Add horizontal padding to the HStack
        }    }
}

struct NearbyPlacesView_Previews: PreviewProvider {
    static var previews: some View {
        NearbyPlacesView(Places: nearbyPlaces)
    }
}
