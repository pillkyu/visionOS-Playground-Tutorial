//
//  LabelView.swift
//  LabelMaker
//
//  Created by 정필규 on 5/11/26.
//

import SwiftUI

struct LabelView: View {
    //상위 뷰에서 해당하는 뷰를 활성화 상태로 두었는지를 확인
    //상위
    @Environment(\.isEnabled) private var isEnabled
    @Binding var label: Label
    var body: some View {
        
        TextField("Type to enter text", text: $label.text, axis: .vertical)
            //
            .frame(width: 500, height: isEnabled ? 500 : nil)
        
            .padding(50)
            .background(label.selectColor(), in: RoundedRectangle(cornerRadius: label.cornerRadius))
            .foregroundColor(.black)
            .font(.system(size:40, weight: .semibold))
            .multilineTextAlignment(.center)
    }
}

#Preview {
    @Previewable @State var label = Label(text: "The label's text content")
    LabelView(label: $label)
        .disabled(true)
}
