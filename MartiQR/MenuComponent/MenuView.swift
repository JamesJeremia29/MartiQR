//
//  MenuView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI


struct MenuView: View {
    var body: some View {
        HStack{
            ButtonMenuComponent(button: ButtonCustom(imageIcon: "ticket", imageName: "Ticket"))
            ButtonMenuComponent(button: ButtonCustom(imageIcon: "calendar.badge.clock", imageName: "Schedule"))
            ButtonMenuComponent(button: ButtonCustom(imageIcon: "train.side.front.car", imageName: "Train"))
            ButtonMenuComponent(button: ButtonCustom(imageIcon: "headphones", imageName: "DINA"))
            ButtonMenuComponent(button: ButtonCustom(imageIcon: "square.split.2x2.fill", imageName: "More", isDisabled: false))
        } .padding(.leading, 20)
            .padding(.top, 10)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
