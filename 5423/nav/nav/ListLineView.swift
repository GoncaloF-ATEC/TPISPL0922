//
//  ListLineView.swift
//  nav
//
//  Created by Gonçalo Feliciano on 21/09/2023.
//

import SwiftUI

struct ListLineView: View {
    var ct: Contacto
    
    var body: some View {
        HStack{
            Image(ct.fotoName)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.horizontal, 15)
            
            Text(ct.nome)
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    ListLineView(ct: Contacto(nome: "Ana"))
}
