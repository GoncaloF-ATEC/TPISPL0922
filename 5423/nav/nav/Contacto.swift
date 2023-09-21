//
//  Contacto.swift
//  nav
//
//  Created by Gonçalo Feliciano on 21/09/2023.
//

import Foundation


class Contacto{
    var nome: String
    private var _fotoName: String?
    var email: String
    
    var fotoName:String{
        
        _fotoName ?? "noImg"
        
    }
    
    
    
    init(nome: String, fotoName: String? = nil, email: String) {
        self.nome = nome
        self._fotoName = fotoName
        self.email = email
    }
    
    
}
