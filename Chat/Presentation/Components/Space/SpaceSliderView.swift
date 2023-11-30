//
//  SpacesSliderView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct SpaceSliderView: View {
    let spaces: [Space]
    let publications: [Publication]
    @State private var currentIndex: Int = 0
    @State private var timerAdded: Bool = false

    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(publications.indices, id: \.self) { index in
                    SpaceSlideCardView(publication: publications[index])
                        .tag(index)
                        .padding(.horizontal)

                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .frame(height: 340)
            .onAppear {
                if !timerAdded {
                    timerAdded = true
                    setupTimer()
                }
            }
            .onDisappear {
                timerAdded = false
            }

            // Indicadores
            HStack(spacing: 4) {
                ForEach(spaces.indices, id: \.self) { index in
                    Circle()
                        .fill(currentIndex == index ? Color.orangePwC : Color.grayPwC)
                        .frame(width: 8, height: 8)
                }
            }
            .padding(.top, 4)
        }
    }
    
    private func setupTimer() {
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
            withAnimation {
                currentIndex = currentIndex < spaces.count - 1 ? currentIndex + 1 : 0
            }
        }
    }
}

struct SpacesSliderView_Previews: PreviewProvider {
    static var previews: some View {
        
        let spacesData = [Space(id: UUID(), name: "Ibex35", memberCount: 238, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", imageName: "ibex35")]

        let spacesExampleData = Space(id: UUID(), name: "Ibex35", memberCount: 238, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", imageName: "ibex35")

        let publicationData = [
            Publication(id: UUID(), space: spacesExampleData, author: "Ignacio Sanchez", authorPosition: "CEO - Iberdrola", authImage: "avatar_placeholder", imageName: nil, videoName: nil, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", likes: 12),
            Publication(id: UUID(), space: spacesExampleData, author: "Josu Jon Imaz", authorPosition: "CEO - Repsol", authImage: "avatar_placeholder", imageName: "img_placeholder", videoName: nil, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", likes: 12),
            Publication(id: UUID(), space: spacesExampleData, author: "Oscar Garcia", authorPosition: "CEO - Inditex", authImage: "avatar_placeholder", imageName: nil, videoName: nil, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", likes: 12),
        ]
        
        SpaceSliderView(spaces: spacesData, publications: publicationData)
            .previewDevice("iPhone 15")
    }
}
