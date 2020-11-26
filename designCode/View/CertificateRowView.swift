//
//  CertificateRowView.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import SwiftUI

let certificateData = [
   Certificate(title: "UI Design", image: "Certificate1", width: 230, height: 150),
   Certificate(title: "SwiftUI", image: "Certificate2", width: 230, height: 150),
   Certificate(title: "Sketch", image: "Certificate3", width: 230, height: 150),
   Certificate(title: "Framer", image: "Certificate4", width: 230, height: 150)
]


struct CertificateRowView: View {
    
    var certificates = certificateData
    
    var body: some View {
        VStack(alignment: .leading) {
           Text("Certificates")
              .font(.system(size: 20))
              .fontWeight(.heavy)
              .padding(.leading, 30)

           ScrollView(.horizontal, showsIndicators: false) {
              HStack(spacing: 20) {
                 ForEach(certificates) { item in
                    CertificateView(item: item)
                 }
              }
              .padding(20)
              .padding(.leading, 10)
           }
        }
    }
}
