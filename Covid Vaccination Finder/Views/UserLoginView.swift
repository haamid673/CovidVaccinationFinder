//
//  UserLoginView.swift
//  Covid Vaccination Finder
//
//  Created by Haamid Farhaan on 23/10/23.
//

import SwiftUI

struct UserLoginView: View {
    @StateObject var viewModel = UserLoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                //Header
                
                HeaderView(title: "Vaccine Finder", subtitle: "Vaccine Booking App", angle: 15, background: .pink)
                
                //Login Form
                Form {
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundColor(Color.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    CVButton(title: "Log in", background: .blue) {
                        viewModel.login()
                    }
                    .padding()
                }
                .offset(y: -50)
                //Create Account
                
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an account", destination: UserRegisterView())
                }
                .padding(.bottom, 50)
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    UserLoginView()
}
