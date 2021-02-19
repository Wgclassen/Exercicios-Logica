//
//  Exercicio07.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 12/02/21.
//

import SwiftUI

struct Exercicio07: View {
    @State private var age = String()
    @State private var height = String()
    @State private var weight = String()
    
    var body: some View {
        Form {
            Section(header: Text("Insira nos campos abaixo sua idade, altura e peso")) {
                TextField("Idade", text: $age).keyboardType(.decimalPad)
                TextField("Altura", text: $height).keyboardType(.decimalPad)
                TextField("Peso", text: $weight).keyboardType(.decimalPad)
            }
            Section(header: Text("Dados do usuário:")){
                Text("\(Int(age) ?? 0)")
                Text("\(Double(height) ?? 0)")
                Text("\(Double(weight) ?? 0)")
            }
        }
    }
}

struct Exercicio07_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio07()
    }
}
