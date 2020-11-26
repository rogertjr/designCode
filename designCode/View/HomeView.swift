//
//  HomeView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
let statusBarHeight = window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
let screen = UIScreen.main.bounds

struct HomeView: View {
    
    @State var show = false
    @State var showProfile = false
    
    var body: some View {
        
        ZStack(alignment: .top) {
           HomeListView()
              .blur(radius: show ? 20 : 0)
              .scaleEffect(showProfile ? 0.95 : 1)
              .animation(.default)

           ContentView()
              .frame(minWidth: 0, maxWidth: 712)
              .cornerRadius(30)
              .shadow(radius: 20)
              .animation(.spring())
              .offset(y: showProfile ? statusBarHeight + 40 : UIScreen.main.bounds.height)

           HStack {
               MenuButtonView(show: $show)
                  .offset(x: -40)
                   Spacer()

               MenuRightView(show: $showProfile)
                  .offset(x: -16)
           }
           .offset(y: showProfile ? statusBarHeight : 80)
           .animation(.spring())

           MenuView(show: $show)
        }
        .background(Color("background"))
        .edgesIgnoringSafeArea(.all)
        
    }
}
