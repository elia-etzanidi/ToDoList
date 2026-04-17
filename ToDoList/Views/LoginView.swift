//
//  LoginView.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 14/4/26.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationView {
            VStack{
                // Header
                HeaderView()
                
                // Login Form
                Form {
                    TextField("Email Adress", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        // Attempt Login
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Login")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                        .frame(height: 35)
                    }
                }
                
                // Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create an account",
                                   destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
            }
        }
        }
}

#Preview {
    LoginView()
}
