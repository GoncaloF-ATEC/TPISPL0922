//
//  ContentViewViewModel.swift
//  nav
//
//  Created by Gonçalo Feliciano on 21/09/2023.
//

import Foundation


class ContentViewViewModel:ObservableObject{
    
    var listaContactos:[Contacto] = []
    
    
    init(listaContactos: [Contacto] = []) {
        self.listaContactos = listaContactos
        
        
        self.listaContactos.append(Contacto(nome: "Ana", fotoName: "foto1"))
        self.listaContactos.append(Contacto(nome: "Mara", fotoName: "foto2"))
        self.listaContactos.append(Contacto(nome: "Rita", fotoName: "foto3"))
        self.listaContactos.append(Contacto(nome: "Joana"))
        
    }
    
    
    
    
    
    
    
    
}
