//
//  ContentView.swift
//  api
//
//  Created by Gonçalo Feliciano on 26/09/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var load = loadData(url: "")
    
    var body: some View {
        VStack {
            Button("Ok") {
                load.saveData()
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
