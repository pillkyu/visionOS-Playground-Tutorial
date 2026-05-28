//
//  LabelMakerApp.swift
//  LabelMaker
//
//  Created by 정필규 on 5/11/26.
//

import SwiftUI

@main
struct LabelMakerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowResizability(.contentSize)
        
        WindowGroup (for: Label.self)//Label의 데이터가 들어올 때 생성되는 창
        { $label in LabelView(label: $label)
                .disabled(true)
            
        } defaultValue: { //만약 값이 유실되었을 경우의 디폴트 값
                Label(text:"", cornerRadius: 20)
            }
            .windowResizability(.contentSize)
            .windowStyle(.plain)// 기본 유리판 배경
        }
    }

