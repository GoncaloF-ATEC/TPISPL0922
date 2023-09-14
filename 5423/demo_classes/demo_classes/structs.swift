//
//  structs.swift
//  demo_classes
//
//  Created by Gonçalo Feliciano on 14/09/2023.
//

import Foundation


struct Morada{
    
    var rua: String
    var cp: String
    
    
    init(rua: String, cp: String) {
        self.rua = rua
        self.cp = cp
    }
    
    init(morada:Morada){
        self.rua = morada.rua
        self.cp = morada.cp
        
    }
    
    
    func teste(){
        print("foo")
        
    }
}
