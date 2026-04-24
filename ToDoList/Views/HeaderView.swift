//
//  HeaderView.swift
//  ToDoList
//
//  Created by Elia Etzanidi on 16/4/26.
//

import SwiftUI

struct HeaderView: View {
    
    let title: String
    let subtitle: String
    let angle: Double
    let background: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees: angle))
            
            
            VStack {
                Text(title)
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(Color(.white))
                Text(subtitle)
                    .font(.system(size:30))
                    .foregroundStyle(Color(.white))
            }
            .padding(.top, 80)
        }
        .frame(height: 350)
        .containerRelativeFrame(.horizontal) { width, axis in
            return width * 3
        }
        .offset(y: -150)
    }
}

#Preview {
    HeaderView(title: "Title", subtitle: "Subtitle", angle: 15, background: .blue)
}
