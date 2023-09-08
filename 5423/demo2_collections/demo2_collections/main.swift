//
//  main.swift
//  demo2_collections
//
//  Created by Gonçalo Feliciano on 08/09/2023.
//

import Foundation

// array

var arr1:[Int] = []



print(arr1)
arr1.append(2)
print(arr1)

arr1.append(contentsOf: [1,3,4,5])

print(arr1)

print(arr1.contains([1,2,3,4]))

print( arr1.first { i in
    i == 1
}! )

print(arr1)
arr1.insert(99, at: 2)

print(arr1)
/*
 
 [2, 1, 99, 3, 4, 5]

 [2, 1, 99, 3, 4, 5]
 
 */

arr1.insert(95, at: 6)

print(arr1)



arr1.remove(at: 1)
print(arr1)
/*
 
 [2, 99, 3, 4, 5, 95]


 */


var arr2 = [1,2,3,4]

print(arr2.count)
print(arr2.capacity)




print("----------------")
arr2.append(12)
print(arr2.count)
print(arr2.capacity)

print("----------------")
arr2.append(12)
arr2.append(12)
arr2.append(12)

print(arr2.count)
print(arr2.capacity)


print("----------------")
arr2.append(12)
print(arr2.count)
print(arr2.capacity)




var arr3 = [1,2,3]


print("----------------")
print(arr3.count)
print(arr3.capacity)

print("----------------")
arr3.append(21)
print(arr3.count)
print(arr3.capacity)


var arr4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ,11, 12 ,13, 14, 15]
print("----------------")
print(arr4.count)
print(arr4.capacity)
print("----------------")

arr4.append(21)
print(arr4.count)
print(arr4.capacity)


print("------- 60 elm---------")


var arr5:[Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ,11, 12 ,13, 14, 15,1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ,11, 12 ,13, 14, 15, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ,11, 12 ,13, 14, 15,1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ,11, 12 ,13, 14, 15]
print("----------------")
arr5.append(34)
print(arr5.count)
print(arr5.capacity)

print("----------------")
arr5.append(34)
print(arr5.count)
print(arr5.capacity)

print("----------------")
arr5.append(34)
print(arr5.count)
print(arr5.capacity)

print("----------------")

for elm in arr1{
    print(elm)
}

print("----------------")

arr1.forEach { elm in
    
    print(elm)
}
print("----------------")


var numRA = arr1.remove(at: 1)
print(numRA)
// set
print("---------------------------Set---------------------------")

var  set1:Set = [1, 2, 3, 4]

print(set1.insert(30))
print(set1.insert(30))

print(set1.contains(11))



for elm in set1{
    print(elm)
}

print("----------------")

set1.forEach { elm in
    
    print(elm)
}
print("----------------")
print("----------------")
print("----------------")
var set2:Set = ["Ovos", "Farinha", "Acucar", "Leite", "Iogurte", "Oleo"]

var set3:Set = ["Polvilho", "Ovos", "Leite", "Oleo", "Queijo", "Sal"]


print(set2.union(set3))
print("----------------")
print(set2.subtracting(set3))
print(set3.subtracting(set2))
print("----------------")


print(set2.intersection(set3))
print("----------------")
      
print(set2.symmetricDifference(set3))
      
      
print("----------------")
print("----------------")
print("----------------")

print(set1)

var numR = set1.remove(133)



print(set1)


// dicionarios
var dict1 = ["nome":"Gonçalo", "escola": "ATEC", "key":"valor A", "key2":"valor", "key3":"valor B"]

print(dict1["nome"]!)


print(dict1)


/*
 
 ["escola": "ATEC", "nome": "Gonçalo", "key3": "valor B", "key": "valor A", "key2": "valor"]
 ["nome": "Gonçalo", "key": "valor A", "escola": "ATEC", "key3": "valor B", "key2": "valor"]
 
 ["nome": "Gonçalo", "key": "valor A", "escola": "ATEC", "key3": "valor B", "key2": "valor"]
 */


dict1["novaKey"] = "Novo Valor"

print(dict1)

dict1["novaKey"] = nil

print(dict1)


print(dict1.count)
print(dict1.capacity)

print("----------------")
print("----------------")

for d in dict1.values{
    
    print(d)
    
}

