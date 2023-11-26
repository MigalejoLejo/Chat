//
//  Space.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//
import Foundation

struct Space: Identifiable {
    let id: UUID
    let name: String
    let memberCount: Int
    let imageName: String
}

// Datos de ejemplo
let spacesData = [
    Space(id: UUID(), name: "Ibex35", memberCount: 238, imageName: "ibex35"),
    Space(id: UUID(), name: "Medioambiente", memberCount: 59, imageName: "medioambiente"),
    Space(id: UUID(), name: "Tecnologia", memberCount: 102, imageName: "tecnologia"),
    Space(id: UUID(), name: "Legislacion", memberCount: 178, imageName: "legislacion"),
    // Agrega más espacios aquí...
]
