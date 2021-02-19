//
//  Exercicio76.swift
//  Exercicios Logica
//
//  Created by curitiba01 on 15/02/21.
//

import SwiftUI

struct Exercicio76: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var number3 = ""
    @State private var number4 = ""
    @State private var number5 = ""
    @State private var number6 = ""
    @State private var number7 = ""
    @State private var number8 = ""
    @State private var number9 = ""
    @State private var number10 = ""
    
    var sumNumbers: Int {
        let num1 = Int(number1) ?? 0
        let num2 = Int(number2) ?? 0
        let num3 = Int(number3) ?? 0
        let num4 = Int(number4) ?? 0
        let num5 = Int(number5) ?? 0
        let num6 = Int(number6) ?? 0
        let num7 = Int(number7) ?? 0
        let num8 = Int(number8) ?? 0
        let num9 = Int(number9) ?? 0
        let num10 = Int(number10) ?? 0
        let sum = num1 + num2 + num3 + num4 + num5 + num6 + num7 + num8 + num9 + num10
        return sum
    }
    
    var body: some View {
        Form {
            Section(header: Text("Digite 10 números para a soma")) {
                TextField("Parcela 1", text: $number1)
                TextField("Parcela 2", text: $number2)
                TextField("Parcela 3", text: $number3)
                TextField("Parcela 4", text: $number4)
                TextField("Parcela 5", text: $number5)
                TextField("Parcela 6", text: $number6)
                TextField("Parcela 7", text: $number7)
                TextField("Parcela 8", text: $number8)
                TextField("Parcela 9", text: $number9)
                TextField("Parcela 10", text: $number10)
            }
            Section(header: Text("Total da soma")){
                Text("\(sumNumbers)")
            }
        }
    }
}

struct Exercicio76_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio76()
    }
}
