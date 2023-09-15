//
//  classes.swift
//  proto
//
//  Created by Gonçalo Feliciano on 15/09/2023.
//

import Foundation


class cl:SerVivo{
    var nome: String
    
    var idade: Int
    
    func morre() {

    }
    
    
    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
    }
    
    
}



class Animal{
    func andar(){
        print("Anda")
    }
}

class Cao:Animal{
    
    private var _nome:String = ""
    private var _idade:Int = 0
    
    var raca:String
    
    init(raca: String) {
        self.raca = raca
    }
}

extension Cao:SerVivo{
    var nome: String {
        get {
            self._nome
        }
        set {
            self._nome = newValue
        }
    }
    
  
    var idade: Int{
        get {
            self._idade
        }
        
        set{
            self._idade = newValue
        }
    }
    
    func morre() {
        print("o animal morreu")
    }
    
}



class Planta{
    
    func fotosintese(){
        print("a fazer fotosintese")
        
    }
    
}

class Flor:Planta, SerVivo{
    var nome: String = "sem nome"
    
    var idade: Int = -1
    
    func morre() {
        print("a planta morreu")
    }
    
    
    
    
    
}
