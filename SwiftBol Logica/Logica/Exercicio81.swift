//
//  Exercicio81.swift
//  SwiftBol Logica 16-02
//
//  Created by curitiba01 on 16/02/21.
//

import SwiftUI

struct Exercicio81: View {
    @State private var numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    @State private var highestNumber = ""
    @State private var lowestNumber = ""
    @State private var numbersInt = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    func calc() {
        for index in 0..<numbers.count {
            numbersInt[index] = Int(numbers[index]) ?? 0
        }
        self.highestNumber = String(numbersInt.max() ?? 0)
        self.lowestNumber = String(numbersInt.min() ?? 0)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Escreva 10 números nos campos abaixo")) {
                HStack{
                    Text("Num. 1:")
                    TextField("0", text: $numbers[0]).multilineTextAlignment(.center).keyboardType(.decimalPad)
                    Spacer()
                    Text("Num. 2:")
                    TextField("1", text: $numbers[1]).multilineTextAlignment(.center).keyboardType(.decimalPad)
                }
                HStack{
                    Text("Num. 3:")
                    TextField("0", text: $numbers[2]).multilineTextAlignment(.center).keyboardType(.decimalPad)
                    Spacer()
                    Text("Num. 4:")
                    TextField("1", text: $numbers[3]).multilineTextAlignment(.center).keyboardType(.decimalPad)
                }
                HStack{
                    Text("Num. 5:")
                    TextField("0", text: $numbers[4]).multilineTextAlignment(.center).keyboardType(.decimalPad)
                    Spacer()
                    Text("Num. 6:")
                    TextField("1", text: $numbers[5]).multilineTextAlignment(.center).keyboardType(.decimalPad)
                }
                HStack{
                    Text("Num. 7:")
                    TextField("0", text: $numbers[6]).multilineTextAlignment(.center).keyboardType(.decimalPad)
                    Spacer()
                    Text("Num. 8:")
                    TextField("1", text: $numbers[7]).multilineTextAlignment(.center).keyboardType(.decimalPad)
                }
                HStack{
                    Text("Num. 9:")
                    TextField("0", text: $numbers[8]).multilineTextAlignment(.center).keyboardType(.decimalPad)
                    Spacer()
                    Text("Num. 10:")
                    TextField("1", text: $numbers[9]).multilineTextAlignment(.center).keyboardType(.decimalPad)
                }
            }
            Section {
                Button(action: self.calc) {
                    Text("Processar dados")
                }
                Text("Maior número: \(highestNumber)")
                Text("Menor número: \(lowestNumber)")
                
            }
        }
    }
}

struct Exercicio81_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio81()
    }
}
