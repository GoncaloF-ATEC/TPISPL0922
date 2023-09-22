//
//  todo.swift
//  loadAPI
//
//  Created by Gonçalo Feliciano on 22/09/2023.
//

import Foundation


/*
 {
   "userId": Int
   "id": Int
   "title": String
   "completed": Bool
 }
 
 */


struct MyTask:Identifiable, Decodable{
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
}


class loadData:ObservableObject{
    
    @Published var selcId = "1"
    
    var url:URL
    
    init(url: String) {
        self.url = URL(string: url)!
    }
    
    
    
    func laodToDoWithid(completion: @escaping (MyTask) -> (Void) )  {

        url.append(component: selcId)
        
       print("2 laodToDoWithid")
        let dataTask = URLSession.shared.dataTask(with: url) { mydata, httpResp, erro in
            //erro
            
           print("3 dataTask - inicio")
            if let erro = erro{
                print("Erro: \(erro.localizedDescription)")
            }
            
            
            // resposta
            
            guard let resp = httpResp as? HTTPURLResponse, (200...299).contains(resp.statusCode) else {
                
                print("resposta http errada")
                return
            }
            
            
            //loadDados
            
            if let data = mydata, let todo = try? JSONDecoder().decode(MyTask.self, from: data){
                
               print("4 completion imicio ")
                completion(todo)
                
               print("5 completion -fim")
            }
            print("6 dataTask -fim")

            
        }
        
        print("7 dataTask - pos")

        
        dataTask.resume()
        
        print("8 dataTask.resume()")

        
        url.deleteLastPathComponent()

    }
    
    
    func laodToDoWith(completion: @escaping (MyTask) -> (Void) )  {
        
        let dataTask = URLSession.shared.dataTask(with: url) { mydata, httpResp, erro in
            //erro
            
            if let erro = erro{
                print("Erro: \(erro.localizedDescription)")
            }
            
            
            // resposta
            
            guard let resp = httpResp as? HTTPURLResponse, (200...299).contains(resp.statusCode) else {
                
                return
            }
            
            
            //loadDados
            
            if let data = mydata, let todo = try? JSONDecoder().decode(MyTask.self, from: data){
                
                completion(todo)
                
            }
          

            
        }
        

        
        dataTask.resume()
        
        
        
    }
    
    
    
    
}
