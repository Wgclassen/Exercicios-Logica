//
//  Exercicio45.swift
//  Exercicios Logica
//
//  Created by curitiba01 on 15/02/21.
//

import SwiftUI

struct Exercicio45: View {
    let baseComission: Double = 0.03
    let goalComission: Double = 0.05
    let goalThreshold: Double = 1500
    @State private var baseSalary = ""
    @State private var salesValue = ""
    
    var bonusSalary: Double {
        let sales = Double(salesValue) ?? 0
        if sales > 1500 {
            return (goalThreshold * baseComission) + (sales - goalThreshold) * goalComission
        } else {
            return sales * baseComission
        }
    }
    
    var finalSalary: Double {
        return (Double(baseSalary) ?? 0) + bonusSalary
    }
    
    var body: some View {
        Form {
            Section(header: Text("Insira abaixo o salário fixo do vendedor e seu total de vendas")){
                TextField("Salário Fixo", text: $baseSalary)
                TextField("Total de Vendas", text: $salesValue)
            }
            Section(header: Text("Salário ajustado:")){
                Text("Comissão: R$ \(bonusSalary, specifier: "%.2f")")
                Text("Salário final: R$ \(finalSalary, specifier: "%.2f")")
            }
        }
    }
}

struct Exercicio45_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio45()
    }
}

