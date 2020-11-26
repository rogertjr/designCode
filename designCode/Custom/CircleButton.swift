//
//  CircleButton.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

struct CircleButton: View {
    
    var icon = "person.crop.circle"
    
    var body: some View {
        HStack {
           Image(systemName: icon)
              .foregroundColor(.primary)
        }
        .frame(width: 44, height: 44)
        .background(Color("button"))
        .cornerRadius(30)
        .shadow(color: Color("buttonShadow"), radius: 20, x: 0, y: 20)
    }
}
