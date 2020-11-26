//
//  HomeListView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI


let coursesData = [
   Course(title: "Build an app with SwiftUI",
          image: "Illustration1",
          color: Color("background3"),
          shadowColor: Color("backgroundShadow3")),
   Course(title: "Design and animate your UI",
          image: "Illustration2",
          color: Color("background4"),
          shadowColor: Color("backgroundShadow4")),
   Course(title: "Swift UI Advanced",
          image: "Illustration3",
          color: Color("background7"),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
   Course(title: "Framer Playground",
          image: "Illustration4",
          color: Color("background8"),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
   Course(title: "Flutter for Designers",
          image: "Illustration5",
          color: Color("background9"),
          shadowColor: Color(hue: 0.677, saturation: 0.701, brightness: 0.788, opacity: 0.5)),
]


struct HomeListView: View {
    
    var courses = coursesData
    @State var showContent = false
    
    var body: some View {
       
        ScrollView {
           VStack {
              HStack {
                 VStack(alignment: .leading) {
                    Text("Courses")
                       .font(.largeTitle)
                       .fontWeight(.heavy)

                    Text("22 Courses")
                       .foregroundColor(.gray)
                 }
                 Spacer()
              }
              .padding(.leading, 60.0)

              ScrollView(.horizontal, showsIndicators: false) {
                 HStack(spacing: 30.0) {
                    ForEach(courses) { item in
                       Button(action: { self.showContent.toggle() }) {
                          GeometryReader { geometry in
                             CourseView(title: item.title,
                                        image: item.image,
                                        color: item.color,
                                        shadowColor: item.shadowColor)
                                .rotation3DEffect(Angle(degrees:
                                   Double(geometry.frame(in: .global).minX - 30) / -40), axis: (x: 0, y: 10.0, z: 0))
                                .sheet(isPresented: self.$showContent) { CertificateView() }
                          }
                          .frame(width: 246, height: 360)
                       }
                    }
                 }
                 .padding(.leading, 30)
                 .padding(.top, 30)
                 .padding(.bottom, 70)
                 Spacer()
              }
              CertificateRowView()
           }
           .padding(.top, 78)
        }
        
    }
}
