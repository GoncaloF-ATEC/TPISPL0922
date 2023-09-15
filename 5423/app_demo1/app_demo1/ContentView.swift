//
//  ContentView.swift
//  app_demo1
//
//  Created by Gonçalo Feliciano on 15/09/2023.
//

import SwiftUI

struct ContentView: View {
    
   @State var nome = "Gonçalo"
    
    var body: some View {
        
        VStack(alignment:.leading){
            
            Text("Ola Mundo")
                .background(.pink)
                .frame(width: 120, height: 60)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .clipShape(Capsule())
            
            Spacer()
            
            Text(nome)
                .padding(.bottom, 20)
       
            
  
            Button {
                self.nome = "Novo novo"
            } label: {
                Text("OK")
                    .frame(width: 100, height: 100, alignment: .bottomLeading)
                    .padding(20)
                    .background(.black)
                    .foregroundColor(.white)
                    .font(.title)
                    .fontWeight(.heavy)
            }
            
            
            Spacer()
            
            
            
        }
        
    }
         
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
