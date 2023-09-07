import UIKit

var greeting = "Hello"

print(greeting)


//var

var nome:Int = 10
var nome2 = 12

nome2 = 23
// nome2 = "" -> error: demo1.playground:14:9: error: cannot assign value of type 'String' to type 'Int'

var num1 = 10
var num2 = 15

//operações

var soma1 = num1 + num2

var num3:Float = 10.5



//var soma2 = num1 + num3 -> Binary operator '+' cannot be applied to operands of type 'Int' and 'Float'

var soma2 = num3 + Float(num1)


var num4 = 10.5

// var soma2 = num4 + Float(num1) -> Binary operator '+' cannot be applied to operands of type 'Double' and 'Float'


var res = 12.999999

var res_int = Int(res)

//nomes var Cosns

var π = 3.14
var _dsdsad = 12
var 🇵🇹 = "Portugal"
var 🍏 = "teste"


//const

var teste = 10
//teste = 40 -> Cannot assign to value: 'teste' is a 'let' constant // note: change 'let' to 'var' to make it mutable

teste = 40


// condições

//if else


if teste == 10 {
 
    print("teste = 10")
}else{
    print("teste != 10 mas sim \( teste )")
}
    

teste = 13
if teste == 10 {
 
    print("teste = 10")
}else if teste > 40{
    
    print("teste = 40")
}else if num1 != 10{
    
}else if num2 == 40{
    
}else{
    
    print("teste tem outro valor")
}
    


//switch case
print("-------------------------------")
teste = 10
switch(teste){
    case 10:
        print("teste = 10")
        break
        print("nao aparece")
        fallthrough
    case 40:
        print("teste = 40")
    default:
        print("teste tem outro valor")
}



// loops

// for each

/*
 
 se num par e num % 10 = 0  -> print "o res = num"
 
 se num par e num % 10 != 0 -> print "o res = num", "func complexa"
 */

for i in 0...100 where i % 2 == 0{
   
    print(i)

    if i % 10 == 0{
        if true{
            continue
        }
    }
   
    print("teste")
    
    if i == 82{
        break
    }
}


//while

var condwile = 10


while condwile > 0{
    
    print(condwile)
    condwile -= 1
}

//do while
print("------------------------------------------")
condwile = 10
repeat{
    
    print(condwile)
    condwile -= 1
    
}while(condwile > 0)


//Funções
