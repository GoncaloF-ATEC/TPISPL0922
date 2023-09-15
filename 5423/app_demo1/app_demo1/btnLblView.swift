//
//  btnLblView.swift
//  app_demo1
//
//  Created by Gonçalo Feliciano on 15/09/2023.
//

import SwiftUI

struct btnLblView: View {
    var btnTxt = "OK"
    var body: some View {
        Text(self.btnTxt)
            .frame(width: 100, height: 100, alignment: .bottomLeading)
            .padding(20)
            .background(.black)
            .foregroundColor(.white)
            .font(.title)
            .fontWeight(.heavy)
    }
}

struct btnLblView_Previews: PreviewProvider {
    static var previews: some View {
        btnLblView()
    }
}
