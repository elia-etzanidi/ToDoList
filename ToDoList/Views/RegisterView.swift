//
//  RegisterView.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 14/4/26.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register", subtitle: "Start organizing todos", angle: -15, background: .orange)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
