//
//  Exercicio46.swift
//  Exercicios Logica
//
//  Created by curitiba01 on 15/02/21.
//

import SwiftUI

struct Exercicio46: View {
    @State private var accountNumber = ""
    @State private var balance = ""
    @State private var debt = ""
    @State private var credit = ""
    @State private var leftoverBalance = ""
    
    func balanceCalc(){
        let accbalance = Double(balance) ?? 0
        let accdebt = Double(debt) ?? 0
        let acccredit = Double(credit) ?? 0
        let sub = accbalance - accdebt + acccredit
        self.leftoverBalance = String(sub)
    }
    
    var finalBalance: Double {
        return Double(leftoverBalance) ?? 0
    }
    
    var balanceStatus: String {
        if finalBalance < 0 {
            return "Saldo negativo"
        } else {
            return "Saldo positivo"
        }
    }
    
    var body: some View {
        Form {
            Section(header: Text("Dados da conta bancária")){
                TextField("Número da Conta", text: $accountNumber)
                TextField("Saldo", text: $balance)
                TextField("Débito", text: $debt)
                TextField("Crédito", text: $credit)
            }
            Section(header: Text("Seu saldo atual é:")){
                Text("R$ \(finalBalance, specifier: "%.2f")")
                Text("\(balanceStatus)")
                
                Button(action: self.balanceCalc) {
                    Text("Calcular")
                }
            }
        }
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Exercicio46_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio46()
    }
}
