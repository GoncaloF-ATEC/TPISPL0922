//
//  ContentView.swift
//  app_demo1
//
//  Created by Gonçalo Feliciano on 15/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var nome = "Gonçalo"
    @State var nomeTF = ""
    
    var body: some View {
        
        VStack(){
            
            Text("Ola Mundo")
                .background(.pink)
                .frame(width: 120, height: 60)
                .background(Color.blue)
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .clipShape(Capsule())
                .onTapGesture(count: 2) {
                    print("2 taps")
                }
                .onTapGesture(count: 1) {
                    print("1 taps")
                }
               
            
            Spacer()

            Text(nome)
                .padding(.bottom, 20)
    
            
            Spacer()
                .frame(height:25)
  
            TextField("Nome:", text: self.$nomeTF)
                .frame(width: 200)
                .textFieldStyle(.roundedBorder)
                .onTapGesture {
                    self.nomeTF = .emptyString
                }
            
            Spacer()
                .frame(height:25)
  
            Button {
                self.nome = self.nomeTF
            } label: {
              btnLblView(btnTxt: "OK2")
            }
            
            Spacer()
     
            
        } // main VStack
        .onChange(of: self.nome) { newValue in
            self.nomeTF = .emptyString
        }
    }
         
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
