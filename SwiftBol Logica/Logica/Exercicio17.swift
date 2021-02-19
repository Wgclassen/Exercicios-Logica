//
//  Exercicio17.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 13/02/21.
//

import SwiftUI

struct Exercicio17: View {
    @State private var years = ""
    @State private var months = ""
    @State private var days = ""

    var ageInDays: Int {
        let ageYears = Int(years) ?? 0
        let ageMonths = Int(months) ?? 0
        let ageDays = Int(days) ?? 0
        let sub = ageDays + ageMonths*30 + ageYears*365
        return sub
    }
    
    var body: some View {
        Form {
            Section(header: Text("Digita abaixo sua idade em anos, dias e meses")){
                TextField("Anos", text: $years)
                TextField("Meses", text: $months)
                TextField("Dias", text: $days)
            }
            Section(header: Text("Sua idade em dias")){
                Text("\(ageInDays)")
            }
        }
    }
}

struct Exercicio17_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio17()
    }
}
