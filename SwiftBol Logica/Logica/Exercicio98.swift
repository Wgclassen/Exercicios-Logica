//
//  Exercicio98.swift
//  Exercicios Logica
//
//  Created by curitiba01 on 15/02/21.
//

import SwiftUI

struct Exercicio98: View {
    @State private var array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
    @State private var array2 = [1, 3, 3, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
    @State private var equalCount = ""
    
    func numberComparison() {
        var counter = 0
        for index in 0..<array1.count {
            if array1[index] == array2[index] {
                counter += 1
            }
        }
        self.equalCount = String(counter)
    }
    
    var body: some View {
        Form {
            Section(header: Text("Exercício 98")) {
                Text("Os dois vetores possuem \(equalCount) números iguais e na mesma posição.")
                Button(action: self.numberComparison) {
                    Text("Comparar")
                }
            }
        }
    }
}


struct Exercicio98_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio98()
    }
}
