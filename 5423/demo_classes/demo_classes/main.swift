import Foundation

/*
 
 git status
 
 git pull
 git add *
 
 git status
 
 git commit -m "bla bla bla"
 git push

 
 
 
 main -> dev -> func-1
             -> func-2
 
 
 main -> dev
             -> func-2
 
 */
print("-----------classes------------")
//classes

var p1 = Pessoa(nome: "Carlos")
var p2 = Pessoa(nome: "Maria", idade: 40)

var p12 = p1.copy()

print(p1.nome)
print(p12.nome)


print("-----------------------")
p12.nome = "Rita"

print(p1.nome)
print(p12.nome)

print("------------structs-----------")

//structs

var m = Morada(rua: "Rua 1", cp: "1231-123")

print(m)

var m2 = m

print(m.rua)
print(m2.rua)
print("-----------------------")
m2.rua = "sem nome"

print(m.rua)
print(m2.rua)

m.teste()


//herança


//protocolos


//propriedades
