//
//  CardBottomView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

struct CardBottomView: View {
    var body: some View {
        VStack(spacing: 20.0) {
           Rectangle()
              .frame(width: 60, height: 6)
              .cornerRadius(3.0)
              .opacity(0.1)

           Text("This certificate is proof that Mithun has achieved UI Design course with approval from a Design+Code instructor.")
              .lineLimit(nil)

           Spacer()
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .padding(.horizontal)
        .background(BlurView(style: .systemMaterial))
        .cornerRadius(30)
        .shadow(radius: 20)
        .offset(y: UIScreen.main.bounds.height - 215)
    }
}
