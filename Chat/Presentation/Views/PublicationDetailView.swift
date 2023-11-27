//
//  PublicationDetailView.swift
//  Chat
//
//  Created by Blue on 27/11/23.
//

import SwiftUI

struct PublicationDetailView: View {
    @Binding var isShowingSideMenu: Bool
    let publication: Publication

    var body: some View {
            ScrollView{
                ZStack{
                    VStack {
                        HStack {
                            Image("avatar_placeholder")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .padding([.vertical, .trailing], 6)

                            VStack(alignment: .leading) {
                                Text(publication.author)
                                    .font(.headline)
                                    .foregroundStyle(Color.black)
                                Text("\(publication.authorPosition)")
                                    .foregroundStyle(Color.gray)
                                    .font(.custom("", size: 12))
                            }
                            Spacer()
                        }
                                                
                        Image("img_placeholder")
                            .resizable()
                            .scaledToFit()
                            .padding(.vertical)

                        Text(publication.space.description)

                        Rectangle()
                            .fill(Color.grayPwC)
                            .frame(height: 1)
                            .edgesIgnoringSafeArea(.horizontal)
                        
                        HStack{
                            Spacer()
                            Image("ic_heart")
                                .resizable()
                                .frame(width: 24, height: 24)
                            Image("ic_share")
                                .resizable()
                                .frame(width: 24, height: 24)
                        }
                        .padding(.vertical, 5)
                        
                        Rectangle()
                            .fill(Color.grayPwC)
                            .frame(height: 1)
                            .edgesIgnoringSafeArea(.horizontal)
                        
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .navigationBarBackButtonHidden(true)
                    .customToolbar(
                        isShowingSideMenu: $isShowingSideMenu,
                        title: "",
                        showBack: true
                    )
                }
            }
    }
}

