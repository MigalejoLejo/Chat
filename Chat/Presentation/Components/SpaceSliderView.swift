//
//  SpacesSliderView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct SpaceSliderView: View {
    let spaces: [Space]
    @State private var currentIndex: Int = 0
    @State private var timerAdded: Bool = false

    var body: some View {
        VStack {
            TabView(selection: $currentIndex) {
                ForEach(spaces.indices, id: \.self) { index in
                    SpaceSlideCardView(space: spaces[index])
                        .tag(index)
                        .padding(.horizontal) // Aplica el padding fuera de la sombra para evitar el corte.

                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .frame(height: 340) // Ajusta la altura según sea necesario
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
        Timer.scheduledTimer(withTimeInterval: 10, repeats: true) { _ in
            withAnimation {
                currentIndex = currentIndex < spaces.count - 1 ? currentIndex + 1 : 0
            }
        }
    }
}

struct SpacesSliderView_Previews: PreviewProvider {
    static var previews: some View {
        
        let spacesData = [Space(id: UUID(), name: "Ibex35", memberCount: 238, description: "Iberdrola is a multinational electric utility company headquartered in Bilbao, Spain. It is one of the largest.", imageName: "ibex35")]
        
        SpaceSliderView(spaces: spacesData)
            .previewDevice("iPhone 15")
    }
}
