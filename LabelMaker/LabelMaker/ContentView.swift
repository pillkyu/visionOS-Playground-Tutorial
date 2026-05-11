//
//  ContentView.swift
//  LabelMaker
//
//  Created by 정필규 on 5/11/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    // 새 윈도우를 열 수 있는 함수를 가져오는 것
    @Environment(\.openWindow) private var openWindow
    @State private var label = Label()
    var body: some View {
        LabelView(label: $label)
            .padding(55)
            //oranment는 창과 관련된 제어 및 정보를 표시하는 화면 모듈
            .ornament(attachmentAnchor: .scene(.bottom)){
                HStack(spacing: 30){
                    Slider(value: $label.cornerRadius, in:0...100)
                        .frame(width: 100)
                    HStack{
                        //indices: label 컬러 배열의 번호 모음을 가져옴
                        //id: 데이터 값 자체를 신분증으로 사용
                        ForEach(Label.colors.indices, id: \.self){
                            index in ColorButton(color:Label.colors[index]){
                                label.colorIndex = index
                            }
                        }
                    }
                    Button("Create"){
                        openWindow(value: label)
                        label = Label()
                    }
                    
                }
                .padding([.top, .bottom], 15)
                .padding([.leading, .trailing], 38)
                .glassBackgroundEffect()
                
            }
        
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
