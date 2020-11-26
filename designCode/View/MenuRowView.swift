//
//  MenuRowView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

struct MenuRowView: View {
    var image = "creditcard"
    var text = "My Account"

    var body: some View {
       return HStack {
          Image(systemName: image)
             .imageScale(.large)
             .foregroundColor(Color("icons"))
             .frame(width: 32, height: 32)

          Text(text)
             .font(.headline)
             .foregroundColor(.primary)

          Spacer()
       }
    }
}
