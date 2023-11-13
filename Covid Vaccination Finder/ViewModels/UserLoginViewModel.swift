//
//  UserLoginViewModel.swift
//  Covid Vaccination Finder
//
//  Created by Haamid Farhaan on 23/10/23.
//

import FirebaseAuth
import Foundation
class UserLoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        //try log in
        Auth.auth().signIn(withEmail: email, password: password)
    }
   private func validate() -> Bool {
        
       errorMessage = ""
       guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
           
           errorMessage = "Please fill in all the fields"
           return false
       }
       guard email.contains("@") && email.contains(".") else {
           errorMessage = "Please enter valid email."
           return false
       }
       return true
    }
}

