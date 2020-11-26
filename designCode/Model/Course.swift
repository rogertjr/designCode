//
//  Course.swift
//  designCode
//
//  Created by Rogério Toledo on 25/11/20.
//

import Foundation
import SwiftUI

struct Course: Identifiable {
   var id = UUID()
   var title: String
   var image: String
   var color: Color
   var shadowColor: Color
}
