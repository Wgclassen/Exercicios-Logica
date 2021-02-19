//
//  Exercicio18.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 13/02/21.
//

import SwiftUI

struct Exercicio18: View {
    @State private var totalVoters = ""
    @State private var blankVotes = ""
    @State private var nullVotes = ""
    
    var validVotes: Int {
        let total = Int(totalVoters) ?? 0
        let blank = Int(blankVotes) ?? 0
        let null = Int(nullVotes) ?? 0
        let sub = total - blank - null
        return sub
    }
    
    var blankPercentage: Double {
        let blank = Double(blankVotes) ?? 0
        let total = Double(totalVoters) ?? 1
        let sub: Double = blank/total*100
        return sub
    }
    
    var nullPercentage: Double {
        let total = Double(totalVoters) ?? 1
        let null = Double(nullVotes) ?? 0
        let sub: Double = null/total*100
        return sub
    }
    
    var validPercentage: Double {
        let total = Double(totalVoters) ?? 1
        let valid = Double(validVotes)
        let sub: Double = valid/total*100
        return sub
    }
    
    var totalPercentage: Double {
        let blank = Double(blankPercentage)
        let null = Double(nullPercentage)
        let valid = Double(validPercentage)
        let sub = blank + null + valid
        return sub
    }
    
    var body: some View {
        Form{
            Section (header: Text("Dados da eleição")){
                HStack {
                    Text("Total de eleitores:")
                    Spacer()
                    TextField("0", text: $totalVoters).multilineTextAlignment(.trailing)
                    Text("| \(totalPercentage, specifier: "%.1f")%")
                }
                HStack {
                    Text("Votos Brancos:")
                    Spacer()
                    TextField("0", text: $blankVotes).multilineTextAlignment(.trailing)
                    Text("| \(blankPercentage, specifier: "%.1f")%")
                }
                HStack {
                    Text("Votos Nulos:")
                    Spacer()
                    TextField("0", text: $nullVotes).multilineTextAlignment(.trailing)
                    Text("| \(nullPercentage, specifier: "%.1f")%")
                }
                HStack {
                    Text("Votos Válidos:")
                    Spacer()
                    Text("\(validVotes)").multilineTextAlignment(.trailing)
                    Text("| \(validPercentage, specifier: "%.1f")%")
                }
            }
        }
    }
}

struct Exercicio18_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio18()
    }
}
