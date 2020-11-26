//
//  CourseView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

struct CourseView: View {
    
    var title = "Build an app with SwiftUI"
    var image = "Illustration1"
    var color = Color("background3")
    var shadowColor = Color("backgroundShadow3")
    
    var body: some View {
        VStack(alignment: .leading) {
           Text(title)
              .font(.title)
              .fontWeight(.bold)
              .foregroundColor(.white)
              .padding(30)
              .lineLimit(4)

           Spacer()

           Image(image)
              .resizable()
              .renderingMode(.original)
              .aspectRatio(contentMode: .fit)
              .frame(width: 246, height: 150)
              .padding(.bottom, 30)
        }
        .background(color)
        .cornerRadius(30)
        .frame(width: 246, height: 360)
        .shadow(color: shadowColor, radius: 20, x: 0, y: 20)
    }
}
