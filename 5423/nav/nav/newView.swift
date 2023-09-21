//
//  newView.swift
//  nav
//
//  Created by Gonçalo Feliciano on 21/09/2023.
//

import SwiftUI

struct newView: View {
    var nome: String
    var foto: String
    
    
    var body: some View {
        
        VStack{

            
            Image(foto)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .padding(.top, 20)

            Text(nome)
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
        .navigationTitle("infos d@ \(nome)")
        
        
        
        
    }
}

#Preview {
    newView(nome: "Joana", foto: "foto1")
}
