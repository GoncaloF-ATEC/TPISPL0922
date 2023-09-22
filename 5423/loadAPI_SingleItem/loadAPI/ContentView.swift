//
//  ContentView.swift
//  loadAPI
//
//  Created by Gonçalo Feliciano on 22/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var todo:MyTask? = nil
    @State var AllTodos:[MyTask] = []
   
    @StateObject var load = loadData(url: "https://jsonplaceholder.typicode.com/todos")
    
    var body: some View {
        VStack {
            
            
            
            TextField("id", text: $load.selcId )
                .frame(width: 50)
                .textFieldStyle(.roundedBorder)
            
            Text(self.todo?.title ?? "nao carregado")
                .font(.largeTitle)
                .bold()
                
            
            
            Button{
                print("1 Button pressed")
                load.laodToDoWithid() { task in
                    
                    print("9 Button - load.laodToDoWithid() { task in")
                    todo = task
                    
                    print("10 Button - load.laodToDoWithid() { task in  - end")

                }
                print("11 Button end")
            } label: {
                
                Text("lodo Data")
                    .frame(width: 150, height: 60)
                    .background(.blue)
                    .clipShape(Capsule())
                    .foregroundStyle(.white)
                
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
