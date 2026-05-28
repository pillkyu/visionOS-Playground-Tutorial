//
//  SeaCreature.swift
//  SeaCreatures
//
//  Created by 정필규 on 5/24/26.
//

import Foundation
//객체가 직접 안정적인 identity를 가질 수 있음
struct SeaCreature: Identifiable{
    var name: String
    var modelName: String
    var id = UUID()
}
