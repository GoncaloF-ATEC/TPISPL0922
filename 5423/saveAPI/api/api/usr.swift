//
//  usr.swift
//  api
//
//  Created by Gonçalo Feliciano on 26/09/2023.
//

import Foundation

/*
 
 {
   "id": 0,
   "name": "string",
   "password": "string"
 }
 
 */

struct urs:Codable{
    
    var id: Int
    var name: String
    var password: String
    
}


class loadData:ObservableObject{
    
 
    
    var url:URL
    
    init(url: String) {
        self.url = URL(string: "http://127.0.0.1:8000/teste2")!
    }
    func saveData_qp()  {
        
        
         let novoURL = url.appending(queryItems: [URLQueryItem(name: "nome", value: "Gonçalo")])
         
         print(novoURL)
         
         var urlReq = URLRequest(url: self.url)

         urlReq.httpMethod = "POST"
        
        let task = URLSession.shared.dataTask(with: urlReq)
    
        task.resume()
    }
    
    
    func saveData()  {

       
      
        var urlReq = URLRequest(url: url)

        urlReq.httpMethod = "POST"

        urlReq.setValue("application/json", forHTTPHeaderField: "accept")
        urlReq.setValue("application/json", forHTTPHeaderField: "Content-Type")
     
        
        let data = try! JSONEncoder().encode(urs(id: 0, name: "Gonçalo", password: "1234"))

        
        print("--------- data ------\n")
        print(String(decoding: data, as: UTF8.self))
        print("\n---------------------")

        
        urlReq.httpBody = data
        
    
        let task = URLSession.shared.dataTask(with: urlReq)
    
        task.resume()

    }
    

}


