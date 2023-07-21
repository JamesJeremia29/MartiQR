//
//  MenuDetailedView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct MenuDetailedView: View {
    var body: some View {
        VStack (alignment: .leading){
            HStack{
                Text("Top Menus")
                    .fontWeight(.semibold)
                    .font(.system(size: 24))
                    .foregroundColor(.black)

                Spacer()
                
            }
            HStack{
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "ticket", imageName: "Ticket"))
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "calendar.badge.clock", imageName: "Schedule"))
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "train.side.front.car", imageName: "Train"))
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "headphones", imageName: "DINA"))
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "square.split.2x2.fill", imageName: "More"))
            }.padding(.bottom, 30)
            
            HStack{
                Text("Lifestyle")
                    .fontWeight(.semibold)
                    .font(.system(size: 24))
                    .foregroundColor(.black)

                Spacer()
            }
            
            HStack{
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "crown.fill", imageName: "MartiPoin"))
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "person.3.fill", imageName: "Community"))
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "books.vertical.fill", imageName: "E-Library"))
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "takeoutbag.and.cup.and.straw.fill", imageName: "Tenant"))
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "dot.radiowaves.up.forward", imageName: "Nearby"))
            }.padding(.bottom, 20)
            
            HStack{
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "film.fill", imageName: "Movies"))
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "calendar.badge.exclamationmark", imageName: "Event"))
                ButtonMenuComponent(button: ButtonCustom(imageIcon: "newspaper.fill", imageName: "News"))
                
            }.padding(.bottom, 30)
        
        Spacer()
            
        }.padding(.leading, 30)
    }
    
    struct MenuDetailedView_Previews: PreviewProvider {
        static var previews: some View {
            MenuDetailedView()
        }
    }
}
