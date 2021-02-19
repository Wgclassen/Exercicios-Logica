//
//  Exercicio20.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 13/02/21.
//

import SwiftUI

struct Exercicio20: View {
    @State private var dollars = ""
    @State private var dollarVallue = "5.37"
    
    var reais: Double {
        let dolamount = Double(dollars) ?? 0
        let dolvalue = Double(dollarVallue) ?? 0
        let sub = dolamount/dolvalue
        return sub
    }
    
    var body: some View {
        Form{
            Section(header: Text("Insira o valor em dólar e a cotação atual")){
                HStack {
                    Text("Valor em Dólar: ")
                    Spacer()
                    Text("U$$").multilineTextAlignment(.trailing)
                    TextField("0.00", text: $dollars)
                }
                HStack {
                    Text("Cotaçao do Dólar: ")
                    Spacer()
                    Text("R$").multilineTextAlignment(.trailing)
                    TextField("0.00", text: $dollarVallue)
                }
                HStack {
                    Text("Valor em Reais:")
                    Spacer()
                    Text("R$")
                    Text("\(reais, specifier: "%.2f")")
                }
            }
        }
    }
}

struct Exercicio20_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio20()
    }
}
