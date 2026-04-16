//
//  HeaderView.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 16/4/26.
//

import SwiftUI

struct HeaderView: View {
    
    // screen width helper
    private var screenWidth: CGFloat {
        let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene
        return scene?.screen.bounds.width ?? 375
    }
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(.pink)
                .rotationEffect(Angle(degrees: 15))
            
            
            VStack {
                Text("To Do List")
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(Color(.white))
                Text("Get Things Done")
                    .font(.system(size:30))
                    .foregroundStyle(Color(.white))
            }
            .padding(.top, 40)
        }
        .frame(width: screenWidth * 3,
               height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
