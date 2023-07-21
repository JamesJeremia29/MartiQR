//
//  ScheduleView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct RoundedRectangleWithStroke: Shape {
    var cornerRadius: CGFloat
    var lineWidth: CGFloat
    var color: Color
    
    func path(in rect: CGRect) -> Path {
        let path = RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
        return path.path(in: rect).strokedPath(StrokeStyle(lineWidth: lineWidth))
    }
}
struct ScheduleView: View {
    @EnvironmentObject var viewModel: UserViewModel
    var body: some View {
        VStack{
            HStack{
                Text("You are currently on… ")
                    .fontWeight(.medium)
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .padding(.leading, 20)
                    .padding(.vertical, 10)
                Spacer()
            }
            
            ZStack{
                RoundedRectangleWithStroke(cornerRadius: 11, lineWidth: 1, color: Color("Primary"))
                    .frame(width: 350, height: 50)
                
                HStack{
                    Text("\(Image(systemName: "mappin")) \(viewModel.tapIn)")
                        .fontWeight(.bold)
                        .font(.system(size: 16))
                        .foregroundColor(Color("Primary"))
                        .padding(.leading, 35)
                    Spacer()
                }
            }
            
            HStack{
                Text("Heading to… ")
                    .fontWeight(.medium)
                    .font(.system(size: 12))
                    .foregroundColor(.black)
                    .padding(.leading, 20)
                    .padding(.vertical, 10)
                Spacer()
            }
            
            HStack{
                VStack(alignment: .leading){
                    Text("\(Image(systemName: "flag.checkered")) Lebak Bulus Grab")
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                        .foregroundColor(Color("Primary"))
                    
                    ScheduleCardView(arrival: "09.47", duration: "in 6 mins", color: "Secondary")
                    ScheduleCardView(arrival: "09.55", duration: "in 14 mins", color: "Secondary")
                    
                }
                
                VStack(alignment: .leading){
                    Text("\(Image(systemName: "flag.checkered")) Bundaran HI")
                        .fontWeight(.bold)
                        .font(.system(size: 14))
                        .foregroundColor(Color("Primary"))
                    
                    ScheduleCardView(arrival: "09.42", duration: "in 6 mins", color: "Primary")
                    ScheduleCardView(arrival: "09.50", duration: "in 14 mins", color: "Primary")
                    
                }
                
            }
        }
    }
    
    struct ScheduleView_Previews: PreviewProvider {
        static var previews: some View {
            ScheduleView().environmentObject(UserViewModel())
        }
    }
}
