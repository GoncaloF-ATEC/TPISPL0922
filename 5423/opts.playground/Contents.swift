import UIKit

var j:Int
/*
 Int ≠ Int?
 
 */
var i:Int?

i = 10

print(i)
print(i!)


//i = nil
//print(i!) -> Unexpectedly found nil while unwrapping an Optional value


if let novaVar = i{
    
    print(novaVar)
}else {
    
    print("i é nil")
}



print(i ?? 0)

i = 30
if let i{
    
    print(i)
}else {
    
    print("i é nil")
}


func funcName(idade:Int? = nil,  var2:Int? = nil){
    if let var2{
        
        print(var2)
    }
    
    guard let i = idade else {
        print("idade é nil")
        return
    }
    
    print(i)
    
    
}


funcName()
funcName(idade: 20)


var photo:String? = "img11"

print(photo ?? "noImg")


/*
 
 !
 ??
 
 if let
 guard let
 
 
 */
