//
//  Exercicio05.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 12/02/21.
//

import SwiftUI

struct Exercicio05: View {
    @State private var idade: Int = 28
    @State private var altura: Double = 1.80
    @State private var peso: Double = 90.0
    
    var body: some View {
        List {
            Text("\(idade)")
            Text("\(altura, specifier: "%.2f")")
            Text("\(peso, specifier: "%.2f")")
        }
    }
}

struct Exercicio05_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio05()
    }
}
