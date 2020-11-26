//
//  UpdateDetailView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

struct UpdateDetailView: View {
    
    var title = "SwiftUI"
    var text = "Loading..."
    var image = "Illustration1"

    var body: some View {
        VStack(spacing: 20.0) {
           Text(title)
              .font(.largeTitle)
              .fontWeight(.heavy)

           Image(image)
              .resizable()
              .aspectRatio(contentMode: .fit)
              .frame(height: 200)

           Text(text)
              .lineLimit(nil)
              .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)

           Spacer()
        }
        .padding(30.0)
    }
}
