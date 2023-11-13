//
//  UserRegisterView.swift
//  Covid Vaccination Finder
//
//  Created by Haamid Farhaan on 23/10/23.
//

import SwiftUI

struct UserRegisterView: View {
    @StateObject var viewModel = UserRegisterViewModel()
    
    var body: some View {
        VStack {
            //Header
            
            HeaderView(title: "Register", subtitle: "Enter your personal info", angle: -15, background: .orange)
            
            Form {
                TextField("Full name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                CVButton(title: "Create Account", background: .green) {
                    viewModel.register()
                }
                .padding()
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    UserRegisterView()
}

