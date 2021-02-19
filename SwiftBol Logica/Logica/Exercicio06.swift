//
//  Exercicio06.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 12/02/21.
//

import SwiftUI

struct Exercicio06: View {
    @State private var nome = String()
    @State private var celular = String()
    @State private var cidade = String()
    
    var body: some View {
        Form {
            Section(header: Text("Informações do usuário")) {
                TextField("Nome", text: $nome)
                TextField("Celular", text: $celular)
                TextField("Cidade", text: $cidade)
            }
            Section(header: Text("Dados informados")) {
                Text("\(nome)")
                Text("\(celular)")
                Text("\(cidade)")
            }
        }
    }
    
    struct Exercicio06_Previews: PreviewProvider {
        static var previews: some View {
            Exercicio06()
        }
    }
}
