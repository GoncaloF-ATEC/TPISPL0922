//
//  ContentView.swift
//  nav
//
//  Created by Gonçalo Feliciano on 21/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = ContentViewViewModel()
    
    var body: some View {
        NavigationStack {
            
            VStack{
                
                
                List {
                    
                    ForEach(vm.listaContactos) { ct in
                        
                        NavigationLink {
                            newView(contacto: ct)
                        } label: {
                            ListLineView(ct: ct)
                        }
     
                    }

                    
                }//List
                .listRowSpacing(5)
            
            } // main VStack
            .navigationTitle("Home page")
            .navigationBarTitleDisplayMode(.automatic)
        } //NavigationStack
        
        
    } // main view
}

/*
 
 MVC
 
 */




#Preview {
    ContentView()
}
