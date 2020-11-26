//
//  CertificatesView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

struct CertificatesView: View {
    @State var show = false
    @State var viewState = CGSize.zero
    
    var body: some View {
        ZStack {
           BlurView(style: .systemMaterial)

           TitleView()
              .blur(radius: show ? 20 : 0)
              .animation(.default)

           CardBottomView()
              .blur(radius: show ? 20 : 0)
              .animation(.default)

           CardView()
              .background(show ? Color.red : Color("background9"))
              .cornerRadius(10)
              .shadow(radius: 20)
              .offset(x: 0, y: show ? -400 : -40)
              .scaleEffect(0.85)
              .rotationEffect(Angle(degrees: show ? 15 : 0))
              .blendMode(.hardLight)
              .animation(.easeInOut(duration: 0.6))
              .offset(x: viewState.width, y: viewState.height)

           CardView()
              .background(show ? Color("background5") : Color("background8"))
              .cornerRadius(10)
              .shadow(radius: 20)
              .offset(x: 0, y: show ? -200 : -20)
              .scaleEffect(0.9)
              .rotationEffect(Angle(degrees: show ? 10 : 0))
              .blendMode(.hardLight)
              .animation(.easeInOut(duration: 0.4))
              .offset(x: viewState.width, y: viewState.height)

           CertificateView()
              .offset(x: viewState.width, y: viewState.height)
              .scaleEffect(0.95)
              .rotationEffect(Angle(degrees: show ? 5 : 0))
              .animation(.spring())
              .onTapGesture {
                 self.show.toggle()
              }
              .gesture(
                 DragGesture()
                    .onChanged { value in
                       self.viewState = value.translation
                       self.show = true
                    }
                    .onEnded { _ in
                       self.viewState = CGSize.zero
                       self.show = false
                    }
              )
        }
    }
}
