//
//  ContentView.swift
//  loadAPI
//
//  Created by Gonçalo Feliciano on 22/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var todo:MyTask? = nil
    @State var AllTodos:MyTasks = []
   
    @StateObject var load = loadData(url: "https://jsonplaceholder.typicode.com/todos")
    
    var body: some View {
        NavigationStack {
            

            List {

                Section("Done") {
                    
                    ForEach(
                        AllTodos.filter({ MyTask in
                            MyTask.completed
                        })
                    ) { todo in
                        Text(todo.title)
                    }
                }
                
                Section("To do") {
                    ForEach(
                        AllTodos.filter({ MyTask in
                            !MyTask.completed
                        })
                    ) { todo in
                        Text(todo.title)
                    }
                }
              
            }
            .navigationTitle("My ToDo List")
            
            
            
        }
        .onAppear(perform: {
            load.laodAllToDo { MyTasks in
                self.AllTodos = MyTasks
            }
        })
            
    }
}

#Preview {
    ContentView()
}
