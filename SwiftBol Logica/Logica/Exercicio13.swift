//
//  Exercicio13.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 13/02/21.
//

import SwiftUI

struct Exercicio13: View {
    @State private var value1 = ""
    @State private var value2 = ""

    var result: CLong {
        let num1 = Double(value1) ?? 0
        let num2 = Double(value2) ?? 0
        return CLong(pow(num1, num2))
    }
    
    var body: some View {
        Form{
            Section(header: Text("Insira dois números abaixo para exponenciação")){
                TextField("Número", text: $value1)
                TextField("Exponente", text: $value2)
            }
            Section(header: Text("Resultado")){
                Text("\(result)")
            }
        }
        
    }
}

struct Exercicio13_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio13()
    }
}
