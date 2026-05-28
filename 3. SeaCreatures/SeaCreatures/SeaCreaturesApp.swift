//
//  SeaCreaturesApp.swift
//  SeaCreatures
//
//  Created by 정필규 on 5/21/26.
//

import SwiftUI

@main
struct SeaCreaturesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowResizability(.contentSize)
        .defaultSize(width: 0.75, height: 0.5, depth: 0.5, in: .meters)
        
        WindowGroup(id: "creatureWindow", for: String.self){ $modelName in
            SeaCreatureDetailView(modelName: modelName ?? "ToyBiplane") // 값이 존재하지 않으면 toybiplane으로 값을 대체
                .padding3D(.all, 250)
        }
        .windowStyle(.volumetric) //공간을 3D 형태로 만들어줌
        .defaultSize(width: 0.5, height: 0.5, depth:0.5, in: .meters)
    }
}
