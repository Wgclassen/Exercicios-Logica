//
//  Exercicio11.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 12/02/21.
//

import SwiftUI

struct Exercicio11: View {
    @State private var value1 = ""
    @State private var value2 = ""
    
    var result: Int {
        let num1 = Int(value1) ?? 0
        let num2 = Int(value2) ?? 0
        let sub = num1 * num2
        return sub
    }
    
    var body: some View {
        Form {
            Section(header: Text("Insira dois números abaixo para a multiplicação")) {
                TextField("Fator 1", text: $value1)
                TextField("Fator 2", text: $value2)
            }
            Section(header: Text("Produto da multiplicação:")) {
                Text("\(result)")
            }
        }
    }
}

struct Exercicio11_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio11()
    }
}
