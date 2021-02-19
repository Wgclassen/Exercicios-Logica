//
//  Exercicio10.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 12/02/21.
//

import SwiftUI

struct Exercicio10: View {
    @State private var value1 = String()
    @State private var value2 = String()
    @State private var result = String()
    
    func subCalc() {
        let num1 = Int(value1) ?? 0
        let num2 = Int(value2) ?? 0
        let sub = num1 - num2
        self.result = String(sub)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Dados para a subtração:")) {
                TextField("Minuendo", text: $value1)
                TextField("Subtraendo", text: $value2)
            }
            Section(header: Text("Diferença da subtração:")){
                Text("\(result)")
                Button(action: self.subCalc) {
                    Text("Calcular")
                }
            }
        }
        
    }
}

struct Exercicio10_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio10()
    }
}
