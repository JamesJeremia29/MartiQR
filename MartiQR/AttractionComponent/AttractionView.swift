//
//  AttractionView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct AttractionView: View {
    var body: some View {
        VStack(alignment: .leading){
            NavigationLink{
                AttractionDetailView()
            } label: {
                HStack{
                    Text("Must-see Attractions! \(Image(systemName: "arrow.right.circle.fill"))")
                        .fontWeight(.bold)
                        .font(.system(size: 16))
                        .foregroundColor(Color("Primary"))
                        .padding(.leading, 20)
                        .padding(.top, 10)

                    Spacer()
                }
            }
            
            HStack{
                Text("Explore every inch of there popular attractions!")
                    .fontWeight(.medium)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .padding(.top, -6)
                    .padding(.leading, 20)
                Spacer()
            }
            
            AttractionScrollView(imageNames: imageAttraction)

        }
    }
}

struct AttractionView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionView()
    }
}

