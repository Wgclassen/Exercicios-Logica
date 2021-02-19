//
//  Exercicio09.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 12/02/21.
//

import SwiftUI

struct Exercicio09: View {
    @State private var value1 = String()
    @State private var value2 = String()
    
    var result: Int {
        let num1 = Int(value1) ?? 0
        let num2 = Int(value2) ?? 0
        let sum = num1 + num2
        return sum
    }
    
    var body: some View {
        Form {
            Section(header: Text("Insira dois números para a soma:")){
                TextField("Parcela 1", text: $value1).keyboardType(.decimalPad)
                TextField("Parcela 2", text: $value2).keyboardType(.decimalPad)
            }
            Section(header: Text("Resultado da soma:")){
                Text("\(result)")
            }
        }
        
    }
}

struct Exercicio09_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio09()
    }
}
