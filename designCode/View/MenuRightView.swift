//
//  MenuRightView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

struct MenuRightView: View {
    
    @Binding var show: Bool
    @State var showUpdate = false
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
           HStack {
              Button(action: { self.show.toggle() }) {
                 CircleButton(icon: "person.crop.circle")
              }
              Button(action: { self.showUpdate.toggle() }) {
                 CircleButton(icon: "bell")
                    .sheet(isPresented: self.$showUpdate) { UpdateListView() }
              }
           }
           Spacer()
        }
    }
}
