//
//  ContentView.swift
//  nav
//
//  Created by Gonçalo Feliciano on 21/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            
            VStack{
                
                NavigationLink {
                    
                    newView(nome: "Maria", foto: "foto1")
                    
                } label: {
                    Text("Go to View 2")
                }
                
                
            } // main VStack
            .navigationTitle("Home page")
            .navigationBarTitleDisplayMode(.automatic)
        } //NavigationStack
        
        
    } // main view
}




#Preview {
    ContentView()
}
