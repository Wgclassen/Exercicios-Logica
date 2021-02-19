//
//  Exercicio04.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 12/02/21.
//

import SwiftUI

struct Exercicio04: View {
    @State private var nome: String = "Willian Classen"
    @State private var celular: String = "(41) 99622-4770"
    @State private var cidade: String = "Curitiba"
    var body: some View {
        List {
            Text(nome)
            Text(celular)
            Text(cidade)
        }
    }
}

struct Exercicio04_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio04()
    }
}
