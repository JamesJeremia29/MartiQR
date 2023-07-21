//
//  ScheduleCardView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct ScheduleCardView: View {
    
    var arrival: String
    var duration: String
    var color: String
    
    var body: some View {
        HStack{
            HStack{
                Text(arrival)
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .padding(.leading, 10)
                Spacer()
            }
            
            Text(duration)
                .fontWeight(.regular)
                .font(.system(size: 10))
                .foregroundColor(.white)
                .padding(.trailing, 10)


        } .frame(width: 165, height: 50)
            .padding(.all, 5)
            .background(Rectangle())
            .foregroundColor(Color(color))
            .cornerRadius(12)
    }
}

struct ScheduleCardView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleCardView(arrival: "09.47", duration: "in 6 mins", color: "Primary")
    }
}
