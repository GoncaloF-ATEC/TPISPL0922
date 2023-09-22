//
//  ContentView.swift
//  grid
//
//  Created by Gonçalo Feliciano on 22/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    var rowdef:[GridItem] = [
        GridItem(.adaptive(minimum: 50, maximum: 220 ))
    ]
    
    
    
    var body: some View {
        
        
        
        NavigationStack {
            
            ScrollView(.vertical) {
                
                
                LazyVGrid(columns: rowdef) {
                    ForEach(0...1000, id: \.self) { i in
                        Text("\(i)")
                            .frame(width: 50, height: 50)
                            .background(.gray)
                        
                    }
                    
                    
                    
                }// LazyVGrid
                
            }//ScrollView
            .navigationTitle("Teste")
            .navigationBarTitleDisplayMode(.large)
        
        }//NavigationStack
        
        
    }//  var body: some View {
    
    
}//struct ContentView: View {

#Preview {
    ContentView()
}
