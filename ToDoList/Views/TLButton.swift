//
//  TLButton.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 20/4/26.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let backgroung: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Action
            action()
            
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroung)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
            .frame(height: 35)
        }
        .padding()
    }
}

#Preview {
    TLButton(title: "Value", backgroung: .pink) {
        // Action
    }
}
