//
//  SideMenuView.swift
//  Chat
//

import SwiftUI

struct SideMenuButtonView: View {
    var categoryText: String
    var categoryImage: String
    var action: (() -> Void)?
    
    var body: some View {
        Button(action: { action?() }) {
                Image(categoryImage)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .padding(.trailing, 5)

            Text(categoryText)
                .foregroundStyle(.black)
            }
        .padding(.vertical, 8)

    }
}
