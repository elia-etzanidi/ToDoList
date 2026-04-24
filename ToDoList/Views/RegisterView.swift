//
//  RegisterView.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 14/4/26.
//

import SwiftUI

struct RegisterView: View {
    
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Adress", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    backgroung: .green
                ) {
                    // Attempt registration
                    viewModel.register()
                }
                
                
            }
            .offset(y: -50)
            .containerRelativeFrame(.horizontal)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
