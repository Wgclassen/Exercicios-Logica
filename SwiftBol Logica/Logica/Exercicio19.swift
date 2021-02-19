//
//  Exercicio19.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 13/02/21.
//

import SwiftUI

struct Exercicio19: View {
    @State private var currentSalary = ""
    @State private var percentAdjustment = ""
    @State private var adjustedSalary = ""
    
    func subCalc() {
        let current = Double(currentSalary) ?? 0
        let percent = Double(percentAdjustment) ?? 0
        let sub = current + percent*current
        self.adjustedSalary = String(sub)
    }
    
    var body: some View {
        Form{
            Section(header: Text("Insira seu salário atual e % de re-ajuste")){
                
                HStack {
                    Text("Salário Atual:")
                    Spacer()
                    Text("R$").multilineTextAlignment(.trailing)
                    TextField("0.00", text: $currentSalary).multilineTextAlignment(.trailing)
                }
                HStack {
                    Text("Re-ajuste:")
                    Spacer()
                    TextField("25.0", text: $percentAdjustment).multilineTextAlignment(.trailing)
                    Text("%")
                }
            }
            Section(header: Text("Seu novo salário será")){
                Text("R$ \(Double(adjustedSalary) ?? 0, specifier: "%.2f")")
                Button(action: self.subCalc){
                    Text("Calcular")
                }
            }
        }
    }
}

struct Exercicio19_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio19()
    }
}
