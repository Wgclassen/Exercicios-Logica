//
//  Exercicio15.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 13/02/21.
//

import SwiftUI

struct Exercicio15: View {
    @State private var value = ""
    
    var predecessor: Int {
        guard let number = Int(value) else { return 0 }
        let result = number - 1
        return result
    }
    
    var body: some View {
        Form {
            Section(header: Text("Escreva um valor numérico para descobrir seu antecessor")){
                TextField("Número", text: $value)
            }
            Section(header: Text("Antecessor:")){
                Text("\(predecessor)")
            }
        }
    }
}

struct Exercicio15_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio15()
    }
}
