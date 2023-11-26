//
//  Publication.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import Foundation

struct Publication: Identifiable {
    let id: UUID
    let space: Space
    let author: String
    let authorPosition: String
    let authImage: String
    let imageName: String?
    let videoName: String?
    let description: String
    let likes: Int
}

let publicationData = [
    Publication(id: UUID(), space: <#Space#>, author: "Ignacio Sanchez", authorPosition: "CEO - Iberdrola", authImage: "avatar_placeholder", imageName: nil, videoName: nil, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", likes: 12),
    Publication(id: UUID(), space: <#Space#>, author: "Ignacio Sanchez", authorPosition: "CEO - Iberdrola", authImage: "avatar_placeholder", imageName: "img_placeholder", videoName: nil, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", likes: 12),
    Publication(id: UUID(), space: <#Space#>, author: "Ignacio Sanchez", authorPosition: "CEO - Iberdrola", authImage: "avatar_placeholder", imageName: nil, videoName: nil, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", likes: 12),

]
