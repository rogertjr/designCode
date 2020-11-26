//
//  MenuButtonView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

struct MenuButtonView: View {
    @Binding var show: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
           Button(action: { self.show.toggle() }) {
              HStack {
                 Spacer()

                 Image(systemName: "list.dash")
                    .foregroundColor(.primary)
              }
              .padding(.trailing, 18)
              .frame(width: 90, height: 60)
              .background(Color("button"))
              .cornerRadius(30)
              .shadow(color: Color("buttonShadow"), radius: 20, x: 0, y: 20)
           }
           Spacer()
        }
    }
}
