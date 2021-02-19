//
//  Exercicio12.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 13/02/21.
//

import SwiftUI

struct Exercicio12: View {
    @State private var value1 = ""
    @State private var value2 = ""
    @State private var result = ""
    
    func subCalc() {
        let num1 = Double(value1) ?? 0
        let num2 = Double(value2) ?? 0
        let sub: Double = num1 / num2
        self.result = String(sub)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Insira dois números abaixo para a divisão")) {
                TextField("Dividendo", text: $value1)
                TextField("Divisor", text: $value2)
            }
            Section(header: Text("Quociente da divisão")){
                Text("\(result)")
                Button(action: self.subCalc){
                    Text("Calcular")
                }
            }
            
        }
    }
}

struct Exercicio12_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio12()
    }
}
