//
//  TitleView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack {
           HStack {
              Text("Certificates")
                 .font(.largeTitle)
                 .fontWeight(.heavy)

              Spacer()
           }
           Image("Illustration5")

           Spacer()
        }.padding()
    }
}
