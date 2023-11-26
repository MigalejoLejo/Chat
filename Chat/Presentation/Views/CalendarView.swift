//
//  CalendarView.swift
//  Chat
//
//  Created by Blue on 26/11/23.
//

import SwiftUI

struct CalendarView: View {

@Binding var isShowingSideMenu: Bool

    var body: some View {
        NavigationView {
            ScrollView{
                ZStack{
                    VStack {
                        Text("Agenda")
                        ForEach(1...40, id: \.self) { _ in
                            Text("Este es el texto que se mostrará 15 veces.")
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .customToolbar(
                        isShowingSideMenu: $isShowingSideMenu,
                        title: "Agenda",
                        showSearch: true,
                        showCalendar: true,
                        searchAction: { print("Buscar") },
                        calendarAction: { print("Buscar") }

                    )
                }
            }
        }
    }
}

