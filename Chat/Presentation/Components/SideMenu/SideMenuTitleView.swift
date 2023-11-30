//
//  SideMenuTitleView.swift
//  Chat
//

import SwiftUI

struct SideMenuTitleView: View {
    var categoryTitle: String
    
    var body: some View {

        Divider()
        
        Text(categoryTitle)
            .bold()
            .padding(.vertical, 4)
        
        Divider()


    }
}
