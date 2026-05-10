//
//  ContentView.swift
//  TunnelsOfCircles
//
//  Created by 정필규 on 4/30/26.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var colors: [Color] = [.cyan, .blue]
    @State private var depth = 0.0
    
    let minDiameter = 50.0
    let diameterChange = 70.0
    
    var body: some View {
        VStack(spacing: 40) {
            ZStack{
                ForEach(0..<4){index in
                    Circle()
                        .stroke(lineWidth:30)
                        .foregroundColor(colors[index % 2]) // 0 또는 1의 값이 나오도록
                        .frame(height: minDiameter + diameterChange * Double(index))
                        .padding3D(.back, depth)
                }
            }
            .padding(.bottom, 30)
        
            Grid{ //행과 열 작업을 
                GridRow{
                    Text("Depth")
                    Slider(value: $depth, in: 0...50){Text("Depth")}
                }//depth를 슬라이더값을 조정
                GridRow{
                    Text("Colors")
                    HStack{
                        ColorPicker("Color", selection: $colors[0])
                        ColorPicker("Color", selection: $colors[1])
                        Spacer()
                    }
                    .labelsHidden()
                }
            }
            .padding(30)
            .background(.thickMaterial)
            .frame(maxWidth: 320)
        }
        .frame(minHeight: 560)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
