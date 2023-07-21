//
//  AttractionDetailView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct AttractionDetailView: View {
    var body: some View {
        
        VStack {
            HStack{
                Text("Must-see Attractions!")
                    .fontWeight(.semibold)
                    .font(.system(size: 24))
                    .padding(.leading, 50)
                Spacer()
            }
            
            Image("attraction-2")
                .resizable()
                .scaledToFit()
                .frame(width: 315, height: 165)
                .padding(.leading, 10)
                .padding(.vertical, 10)
            
            Image("attraction-1")
                .resizable()
                .scaledToFit()
                .frame(width: 315, height: 165)
                .padding(.leading, 10)
                .padding(.vertical, 10)
            Spacer()
        }
    }
}

struct AttractionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionDetailView()
    }
}
