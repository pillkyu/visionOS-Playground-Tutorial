//
//  SeaCreatureDetailView.swift
//  SeaCreatures
//
//  Created by 정필규 on 5/24/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SeaCreatureDetailView: View {
    let modelName: String
    //그래픽에서 사용하는 실수값
    
    @State private var horizontalRotation = CGFloat.zero
    @State private var verticalRotation = CGFloat.zero
    
    @State private var endHorizontalRotation = CGFloat.zero
    @State private var endVerticalRotatation = CGFloat.zero

    
    var body: some View {
        Model3D(named: modelName, bundle: realityKitContentBundle)
    
        .rotation3DEffect(.degrees(horizontalRotation), axis: .y
        ) // y축은 오른쪽, 왼쪽 회전을 통한 회전
        .rotation3DEffect(.degrees(-verticalRotation), axis: .x
        ) // x축은 위,아래를 통한 회전
        .gesture(
            DragGesture()
                .onChanged({ value in
                    horizontalRotation = value.translation.width + endHorizontalRotation
                    verticalRotation = value.translation.height +
                        endVerticalRotatation
                })
                // Drag된 값이 얼마나 되는지를 전달해주는 제스처 정보  + 이전에 움직인 값의 합산
                .onEnded({_ in
                    endHorizontalRotation = horizontalRotation
                    endVerticalRotatation = verticalRotation
                })
            //onEnded를 통해 얼마나 이동했는지의 최종값을 저장
            )
    }
}

#Preview {
    SeaCreatureDetailView(modelName: "SlugScene")
}
