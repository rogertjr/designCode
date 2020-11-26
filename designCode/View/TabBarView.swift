//
//  TabBarView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
           HomeView().tabItem {
              Image("IconHome")
              Text("Home")
           }
           .tag(1)
           CertificatesView().tabItem {
              Image("IconCards")
              Text("Certificates")
           }
           .tag(2)
           SettingsView().tabItem {
              Image("IconSettings")
              Text("Settings")
           }
           .tag(3)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
