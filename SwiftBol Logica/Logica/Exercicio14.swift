//
//  Exercicio14.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 13/02/21.
//

import SwiftUI

struct Exercicio14: View {
    @State private var value1 = ""
    @State private var value2 = ""
    @State private var result = ""
    
    func subCalc() {
        let num1 = Int(value1) ?? 0
        let num2 = Int(value2) ?? 0
        let sub: Int = num1 % num2
        self.result = String(sub)
    }
    
    var body: some View {
        Form{
            Section(header: Text("Insira dois números abaixo para o calculo do módulo")){
                TextField("Dividendo", text: $value1)
                TextField("Divisor", text: $value2)
            }
            Section(header: Text("Resultado do módulo")){
                Text("\(result)")
                Button(action: self.subCalc){
                    Text("Calcular")
                }
                
            }
        }
    }
}

struct Exercicio14_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio14()
    }
}
