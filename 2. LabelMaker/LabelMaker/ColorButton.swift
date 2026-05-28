//
//  ColorButton.swift
//  LabelMaker
//
//  Created by 정필규 on 5/12/26.
//

import SwiftUI

struct ColorButton: View {
    @State var color: Color
    var selectColor: (() -> Void)
    
    var body: some View {
        Button {
            selectColor()
        }
        label : {
            Circle()
                .foregroundStyle(color)
                .frame(height: 34)
            
        }
        .buttonBorderShape(.circle)
        
    }
}

#Preview {
    ColorButton(color: .cyan){}
}
