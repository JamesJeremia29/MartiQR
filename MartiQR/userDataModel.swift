//
//  userDataModel.swift
//  MartiQR
//
//  Created by James Jeremia on 14/07/23.
//

import Foundation

struct User: Identifiable {
    var id: String = UUID().uuidString
    var tapIn: String
    var tapOut: String
}
