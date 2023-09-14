//
//  ext.swift
//  demo_classes
//
//  Created by Gonçalo Feliciano on 14/09/2023.
//

import Foundation



extension Array<Int>{
    
    var avg:Float{
        
      
        var soma = self.reduce(0) { i, j in
            i + j
        }
        
    
        /*
         
        Float(soma) / Float(count)
         
        Float(soma / count)
         
         */
        return  Float(soma) / Float(count)

        
    }
}
