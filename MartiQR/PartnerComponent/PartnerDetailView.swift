//
//  PartnerDetailView.swift
//  MartiQR
//
//  Created by James Jeremia on 21/07/23.
//

import SwiftUI

struct PartnerDetailView: View {
    
    var partners: [Partner]
    
    var body: some View {
    
        VStack (alignment: .leading) {
            Text("New Levels in Style!")
                .fontWeight(.semibold)
                .font(.system(size: 24))
                .foregroundColor(.black)
                .padding(.leading, 15)
            
            HStack{
                VStack{
                    VStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 130, height: 80)
                                .foregroundColor(.gray)
                                .opacity(0.2)
                                .cornerRadius(11)
                            
                            Image(partners[0].partnerImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 70)
                        }
                        
                        HStack {
                            Text(partners[0].sector)
                                .fontWeight(.medium)
                                .font(.system(size: 8))
                                .foregroundColor(.gray)
                                .padding(.vertical, -2)
                            Spacer()
                        }
                        
                        HStack {
                            Text(partners[0].partnerName)
                                .fontWeight(.medium)
                                .font(.system(size: 12))
                                .foregroundColor(.black)
                                .padding(.vertical, -2)
                            Spacer()
                        }
                        
                        HStack {
                            Text(partners[0].partnerDescription)
                                .fontWeight(.light)
                                .font(.system(size: 7))
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        
                    }
                    .frame(width: 125, height: 160)
                    .padding(.trailing, 15)
                    
                    VStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 130, height: 80)
                                .foregroundColor(.gray)
                                .opacity(0.2)
                                .cornerRadius(11)
                            
                            Image(partners[1].partnerImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 70)
                        }
                        
                        HStack {
                            Text(partners[1].sector)
                                .fontWeight(.medium)
                                .font(.system(size: 8))
                                .foregroundColor(.gray)
                                .padding(.vertical, -2)
                            Spacer()
                        }
                        
                        HStack {
                            Text(partners[1].partnerName)
                                .fontWeight(.medium)
                                .font(.system(size: 12))
                                .foregroundColor(.black)
                                .padding(.vertical, -2)
                            Spacer()
                        }
                        
                        HStack {
                            Text(partners[1].partnerDescription)
                                .fontWeight(.light)
                                .font(.system(size: 7))
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        
                    }
                    .frame(width: 125, height: 160)
                    .padding(.trailing, 15)
                    
                    
                    VStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 130, height: 80)
                                .foregroundColor(.gray)
                                .opacity(0.2)
                                .cornerRadius(11)
                            
                            Image(partners[2].partnerImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 70)
                        }
                        
                        HStack {
                            Text(partners[2].sector)
                                .fontWeight(.medium)
                                .font(.system(size: 8))
                                .foregroundColor(.gray)
                                .padding(.vertical, -2)
                            Spacer()
                        }
                        
                        HStack {
                            Text(partners[2].partnerName)
                                .fontWeight(.medium)
                                .font(.system(size: 12))
                                .foregroundColor(.black)
                                .padding(.vertical, -2)
                            Spacer()
                        }
                        
                        HStack {
                            Text(partners[2].partnerDescription)
                                .fontWeight(.light)
                                .font(.system(size: 7))
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        
                    }
                    .frame(width: 125, height: 160)
                    .padding(.trailing, 15)
                    
                }
                
                VStack{
                    VStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 130, height: 80)
                                .foregroundColor(.gray)
                                .opacity(0.2)
                                .cornerRadius(11)
                            
                            Image(partners[3].partnerImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 70)
                        }
                        
                        HStack {
                            Text(partners[3].sector)
                                .fontWeight(.medium)
                                .font(.system(size: 8))
                                .foregroundColor(.gray)
                                .padding(.vertical, -2)
                            Spacer()
                        }
                        
                        HStack {
                            Text(partners[3].partnerName)
                                .fontWeight(.medium)
                                .font(.system(size: 12))
                                .foregroundColor(.black)
                                .padding(.vertical, -2)
                            Spacer()
                        }
                        
                        HStack {
                            Text(partners[3].partnerDescription)
                                .fontWeight(.light)
                                .font(.system(size: 7))
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        
                    }
                    .frame(width: 125, height: 160)
                    .padding(.trailing, 15)
                    
                    VStack {
                        ZStack {
                            Rectangle()
                                .frame(width: 130, height: 80)
                                .foregroundColor(.gray)
                                .opacity(0.2)
                                .cornerRadius(11)
                            
                            Image(partners[4].partnerImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120, height: 70)
                        }
                        
                        HStack {
                            Text(partners[4].sector)
                                .fontWeight(.medium)
                                .font(.system(size: 8))
                                .foregroundColor(.gray)
                                .padding(.vertical, -2)
                            Spacer()
                        }
                        
                        HStack {
                            Text(partners[4].partnerName)
                                .fontWeight(.medium)
                                .font(.system(size: 12))
                                .foregroundColor(.black)
                                .padding(.vertical, -2)
                            Spacer()
                        }
                        
                        HStack {
                            Text(partners[4].partnerDescription)
                                .fontWeight(.light)
                                .font(.system(size: 7))
                                .foregroundColor(.gray)
                            Spacer()
                        }
                        
                    }
                    .frame(width: 125, height: 160)
                    .padding(.trailing, 15)
                    Spacer()
                }
            }.frame(width: 320, height: 495)
            
            Spacer()
        }
    }
}

struct PartnerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PartnerDetailView(partners: partnersMRT)
    }
}
