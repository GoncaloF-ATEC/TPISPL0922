//
//  newView.swift
//  nav
//
//  Created by Gonçalo Feliciano on 21/09/2023.
//

import SwiftUI

struct newView: View {
   
    var contacto: Contacto
    
    
    var body: some View {
        
        VStack{

            
            Image(contacto.fotoName)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .padding(.top, 20)

            Text(contacto.nome)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.bold)
                .padding(.top,20)
         
            Spacer()
            NavigationLink {
                Text("Detalhes")
            } label: {
                Text("Mais info")
            }

        }
        .navigationTitle("infos d@ \(contacto.nome)")
        
        
        
        
    }
}

#Preview {
    newView(contacto: Contacto(nome: "Maria"))
}
