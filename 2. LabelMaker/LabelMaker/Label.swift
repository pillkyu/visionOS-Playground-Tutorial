//
//  Label.swift
//  LabelMaker
//
//  Created by 정필규 on 5/11/26.
//

import Foundation
import SwiftUI

struct Label: Hashable, Codable {
    var id = UUID()
    var text = ""
    var cornerRadius = 20.0
    var colorIndex = 0
    
    static let colors: [Color] = [.cyan, .green, .indigo]
    
    func selectColor() -> Color{
        Label.colors[colorIndex]
    }
    
}
