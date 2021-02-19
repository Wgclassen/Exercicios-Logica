//
//  Exercicio08.swift
//  SwiftBol Logica
//
//  Created by curitiba01 on 12/02/21.
//

import SwiftUI

struct Exercicio08: View {
    @State private var salary = String()
    @State private var ticket = String()
    
    var body: some View {
        Form{
            Section(header: Text("Insira abaixo seu salário e valor do vale-refeição")){
                TextField("Salário", text: $salary)
                TextField("Vale-refeição", text: $ticket)
            }
            Section(header: Text("Dados do usuário:")) {
                Text("\(salary)")
                Text("\(ticket)")
            }
        }
    }
}

struct Exercicio08_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio08()
    }
}
