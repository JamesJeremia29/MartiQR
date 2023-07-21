//
//  LoginView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct LoginView: View {
    @State private var textInput: String = ""
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Image("logo").padding(.bottom,50)
                Text("Phone Number")
                    .font(.system(size: 15, weight: .medium))
                    .padding(.leading, 50)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Enter text here", text: $textInput)
                                .padding()
                                .background(Color(.white))
                                .frame(width: 332, height: 42)
                                .cornerRadius(21)
                                .padding(.bottom,20)
                Text("Password")
                    .font(.system(size: 15, weight: .medium))
                    .padding(.leading, 50)
                    .frame(maxWidth: .infinity, alignment: .leading)
                TextField("Enter text here", text: $textInput)
                                .padding()
                                .background(Color(.white))
                                .frame(width: 332, height: 42)
                                .cornerRadius(21)
                                .padding(.bottom,20)
                Button {
                    
                } label: {
                    Text("Continue")
                        .foregroundColor(.white)
                        .frame(width: 332, height: 42)
                        .background(Color("Primary"))
                        .cornerRadius(21)

                }
                Image("DividerOr")
                SignInAppleIdButton()

            }.padding(.vertical, 150)
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color("LightBg"))
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
