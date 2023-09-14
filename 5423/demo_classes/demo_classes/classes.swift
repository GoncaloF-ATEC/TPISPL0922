//
//  classes.swift
//  demo_classes
//
//  Created by Gonçalo Feliciano on 14/09/2023.
//

import Foundation


class Pessoa{
    
    var nome: String
    var idade: Int
    var morada: Morada?
    
    init(nome: String, idade: Int = 0, morada:Morada? = nil) {
        self.nome = nome
        self.idade = idade
        self.morada = morada
    }
    
    init(novaPessoa:Pessoa){
        self.nome = novaPessoa.nome
        self.idade = novaPessoa.idade
        self.morada = novaPessoa.morada
        
    }
    
    func copy() -> Pessoa{
        Pessoa(nome: self.nome, idade: self.idade)
    }
    
    
    
}
