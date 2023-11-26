//
//  ToolbarView.swift
//  Chat
//
//  Created by Daniel Chinea on 24/11/23.
//

import SwiftUI

struct CustomToolbarModifier: ViewModifier {
    @Binding var isShowingSideMenu: Bool

    var title: String
    var showProfile: Bool
    var showAddSpace: Bool
    var showSearch: Bool
    var showEdit: Bool
    var showCalendar: Bool
    var searchAction: (() -> Void)?
    var editAction: (() -> Void)?
    var calendarAction: (() -> Void)?


    func body(content: Content) -> some View {
        content
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarLeading) {
                    Button(action: {                
                        withAnimation {
                        isShowingSideMenu.toggle()
                    } }) {
                        Image("ic_burger_menu")
                            .padding(6)
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(Color.grayPwC, lineWidth: 1)
                            )
                    }
                    
                    if showProfile {
                        Image("avatar_placeholder")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())
                    }
                    
                    Text(title)
                        .font(.system(size: 24, weight: .bold, design: .default))

                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    if showAddSpace {
                        Button(action: { searchAction?() }) {
                            Text("Unirse")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundColor(.white)
                                .padding(.vertical, 5)
                                .padding(.horizontal, 30)
                                .background(Color.orangePwC)
                                .cornerRadius(5)
                        }
                    }
                    
                    if showSearch {
                        Button(action: { searchAction?() }) {
                            Image("ic_union")
                                .resizable()
                                .frame(width: 20, height: 20)
                        }
                    }

                    if showEdit {
                        Button(action: { editAction?() }) {
                            Image("ic_new")
                                .resizable()
                                .frame(width: 24, height: 24)
                        }
                    }
                    if showCalendar {
                        Button(action: { calendarAction?() }) {
                            Image("ic_calendar")
                                .resizable()
                                .frame(width: 24, height: 24)
                        }
                    }
                }
            }
    }
}

extension View {
    func customToolbar(isShowingSideMenu: Binding<Bool>, title: String ,showProfile: Bool = false, showAddSpace: Bool = false, showSearch: Bool = false, showOptions: Bool = false, showCalendar: Bool = false, profileAction: (() -> Void)? = nil, searchAction: (() -> Void)? = nil, editAction: (() -> Void)? = nil, calendarAction: (() -> Void)? = nil) -> some View {
        self.modifier(CustomToolbarModifier(isShowingSideMenu: isShowingSideMenu, title: title, showProfile: showProfile, showAddSpace: showAddSpace, showSearch: showSearch, showEdit: showOptions, showCalendar: showCalendar, searchAction: searchAction, editAction: editAction, calendarAction: calendarAction))
    }
}
