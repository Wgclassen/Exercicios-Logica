//
//  Exercicio30.swift
//  SwiftBol Logica 16-02
//
//  Created by curitiba01 on 16/02/21.
//

import SwiftUI

struct Exercicio30: View {
    @State private var celsiusTemp = ""
    
    var farenheitTemp: Double {
        let celsius = Double(celsiusTemp) ?? 0
        let sub = (celsius * 9/5) + 32
        return sub
    }
    
    var body: some View {
        Form {
            Section(header: Text("Insira abaixo o valor em graus Celsius para a conversão")){
                TextField("Valor em Celsius", text: $celsiusTemp)
            }
            Section(header: Text("Temperatura em Farenheit")) {
                Text("\(farenheitTemp, specifier: "%.2f")")
            }
        }
    }
}

struct Exercicio30_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio30()
    }
}
