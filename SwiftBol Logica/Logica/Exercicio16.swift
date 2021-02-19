//
//  Exercicio16.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 13/02/21.
//

import SwiftUI

struct Exercicio16: View {
    @State private var height = ""
    @State private var width = ""
    @State private var area = ""
    
    func subCalc() {
        let num1 = Double(height) ?? 0
        let num2 = Double(width) ?? 0
        let sub = num1 * num2
        self.area = String(sub)
    }
    
    var body: some View {
        Form{
            Section(header: Text("Insira altura e largura do retangulo para calculo da area")){
                TextField("Altura", text: $height)
                TextField("Largura", text: $width)
            }
            Section(header: Text("Resultado")){
                Text("\(area)")
                Button(action: self.subCalc) {
                    Text("Calcular")
                }
            }
        }
    }
    
    struct Exercicio16_Previews: PreviewProvider {
        static var previews: some View {
            Exercicio16()
        }
    }
}
