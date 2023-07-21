//
//  SignInAppleIdButton.swift
//  MartiQR
//
//  Created by James Jeremia on 15/07/23.
//

import SwiftUI
import AuthenticationServices

struct SignInAppleIdButton: View {
    
    @AppStorage("email") var email: String = ""
    @AppStorage("firstName") var firstName: String = ""
    @AppStorage("lastName") var lastName: String = ""
    @AppStorage("userId") var userId: String = ""
    @AppStorage("isSignedIn") var isSignedIn: Bool = false
//
//    @Binding var userFirstName: String
//    @Binding var userLastName: String
    

    var body: some View {
        VStack{
            SignInWithAppleButton(.continue) { request in
                request.requestedScopes = [.email, .fullName]
            } onCompletion: { result in
                switch result{
                case .success(let auth):
                    switch auth.credential {
                    case let credential as ASAuthorizationAppleIDCredential:
                        
                        //user id
                        let userId = credential.user
                        
                        //user info
                        let email = credential.email
                        let firstName = credential.fullName?.givenName
                        let lastName = credential.fullName?.familyName
                        
                        
                        self.userId = userId
                        self.email = email ?? ""
                        self.firstName = firstName ?? ""
                        self.lastName = lastName ?? ""
                        isSignedIn = true

                    default:
                        break
                    }
                case .failure(let error):
                    print(error)
                }
            }
            .frame(width: 332, height: 42)
            .cornerRadius(21)
            .padding()
        }
    }
}

struct SignInAppleIdButton_Previews: PreviewProvider {
    static var previews: some View {
        SignInAppleIdButton()
    }
}
