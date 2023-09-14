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


class Aluno:Pessoa{
    
    var turma: String
    
    var aprovado = false
    
    var notas:[Int] = []{
        
        didSet{
            print("a ultima nota passou de \(oldValue.last) para \(notas.last!)")
            
            
            if notas.count == 5 {
                
                var total = 0
                for n in notas{
                    total += n
                }
                
                var media = total/5
                
                if media >= 10 {
                    aprovado = true
                    print("Aluno aprovado")
                }
            }
            
            
            
        }
        
        willSet{
            print("vai ser adicionada a nota \(newValue.last!)")
            
        }
        
    }
    
    
    init(nome: String, idade: Int = 0, morada: Morada? = nil, turma: String) {
        self.turma = turma
        super.init(nome: nome, idade: idade, morada: morada)
    }
    
    
    override func copy() -> Aluno {
        Aluno(nome: nome, idade: idade, morada: morada, turma: turma)
    }
    
    
}




class Quadrado{
    var lado:Float
    
    var area:Float{
        
        get{
            lado * lado
        }
        
        set{
            self.lado = sqrtf(newValue)
            
        }
        
    }
    
    var perimetro:Float{
        
        get{
            self.lado * 4
            
        }
        
        set{
            self.lado = newValue / 4
            
        }
        
    }
    
    
    init(lado: Float) {
        self.lado = lado
    }
    
    
}



