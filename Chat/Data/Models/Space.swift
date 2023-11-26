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
    let description: String
    let imageName: String
}

// Datos de ejemplo
let spacesData = [
    Space(id: UUID(), name: "Ibex35", memberCount: 238,  description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", imageName: "ibex35"),
    Space(id: UUID(), name: "Medioambiente", memberCount: 59,  description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", imageName: "medioambiente"),
    Space(id: UUID(), name: "Tecnologia", memberCount: 102,  description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", imageName: "tecnologia"),
    Space(id: UUID(), name: "Legislacion", memberCount: 178,  description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", imageName: "legislacion")
]
