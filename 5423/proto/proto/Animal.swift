//
//  Animal.swift
//  proto
//
//  Created by Gonçalo Feliciano on 15/09/2023.
//

import Foundation

protocol SerVivo{
    
    var nome:String {get set}
    
    var idade:Int {get}
    
    func morre()
    
}
