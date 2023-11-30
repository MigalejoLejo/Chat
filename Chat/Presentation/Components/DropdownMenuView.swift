import SwiftUI

struct DropdownMenuView: View {
    @State private var isMenuVisible = false
    private var optionSelected = "Últimas publicaciones"
    var body: some View {
        ZStack {
            // Contenido principal aquí...
            VStack (alignment: .leading){
                Button(action: {
                    withAnimation {
                        isMenuVisible.toggle()
                    }
                }) {
                    HStack{
                        Text(optionSelected)
                        Spacer()
                        Image("ic_back")

                    }

                }

                Spacer()
                
                // Menú desplegable
                if isMenuVisible {
                    VStack (alignment: .leading){
                        Divider()
                        SideMenuButtonView(categoryText: "Últimas publicaciones", categoryImage: "ic_time", action: {
                            print("Últimas publicaciones pulsado")})
                        SideMenuButtonView(categoryText: "Publicaciones destacadas", categoryImage: "ic_newspaper", action: {print("Publicaciones destacadas pulsado")})
                    }
                }
            }
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 16)
            .padding(.top, 8)
            .padding(.bottom, 4)
            .background(Color.white)
            .foregroundColor(Color.black)
            .cornerRadius(5)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)


        }
    }
}

