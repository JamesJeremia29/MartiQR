//
//  HeaderView.swift
//  explore-page
//
//  Created by Kevin Christanto on 19/07/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .frame(height: 220)
                .foregroundColor(Color("Primary"))
                .opacity(0.1)
            
            VStack{
                HStack{
                    Image("logo")
                        .resizable()
                        .frame(width: 140, height: 47)
                    Spacer()
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 110, height: 30)
                            .foregroundColor(.white)
                            .cornerRadius(11)
                        
                        Text("\(Image(systemName: "crown.fill")) 2.096 Points")
                            .fontWeight(.bold)
                            .font(.system(size: 12))
                            .foregroundColor(Color("Primary"))
                        
                    }
                    
                    ZStack{
                        Rectangle()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .cornerRadius(11)
                        
                        Text("\(Image(systemName: "questionmark"))")
                            .fontWeight(.bold)
                            .font(.system(size: 12))
                            .foregroundColor(Color("Primary"))
                    }
                }.frame(width: 350)
                    .ignoresSafeArea()
                    .padding(.bottom, 15)
                                
                HStack {
                    VStack{
                        HStack{
                            Text("MartiPay Balance")
                                .fontWeight(.regular)
                                .font(.system(size: 12))
                                .foregroundColor(.white)
                            Spacer()
                        }
                        
                        HStack{
                            Text("Rp. 150,000")
                                .fontWeight(.bold)
                                .font(.system(size: 30))
                                .foregroundColor(.white)
                            Spacer()
                        }
                    }.padding(.leading, 16)
                    
                    VStack{
                        ZStack{
                            Circle()
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                            
                            Text("\(Image(systemName: "plus.app.fill"))")
                                .fontWeight(.bold)
                                .font(.system(size: 24))
                                .foregroundColor(Color("Primary"))
                                
                        }
                        
                        Text("Top Up")
                            .fontWeight(.regular)
                            .font(.system(size: 8))
                            .foregroundColor(.white)

                    }.padding(.trailing, 16)
                    
                } .frame(width: 340, height: 80)
                    .padding(.all, 5)
                    .background(Rectangle())
                    .foregroundColor(Color("Primary"))
                    .cornerRadius(12)

            }
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
