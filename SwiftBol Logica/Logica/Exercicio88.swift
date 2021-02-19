//
//  Exericio88.swift
//  SwiftBol Logica 16-02
//
//  Created by curitiba01 on 16/02/21.
//

import SwiftUI

struct Exericio88: View {
    @State private var names = ["George", "Bira", "Juliardo", "Geocreciano", "Benabenuto", "Adailton", "Pateba", "Monico", "Monossacaridio", "Xarlie"]
    @State private var searchName = ""
    @State private var searchMessage = "..."
    
    func nameSearch() {
        var endWhile = false
        var index = 0
        while !endWhile {
            if searchName == names[index] {
                endWhile = true
                searchMessage = "ACHEI"
            } else if index == names.count-1 {
                searchMessage = "NÃO ACHEI"
                endWhile = true
            } else {
                index += 1
            }
        }
    }
    
    var body: some View {
        Form {
            Section (header: Text("Relação de nomes")){
                HStack{
                    TextField("Nome 1", text: $names[0])
                    Spacer()
                    TextField("Nome 2", text: $names[1])
                }
                HStack{
                    TextField("Nome 3", text: $names[2])
                    Spacer()
                    TextField("Nome 4", text: $names[3])
                }
                HStack{
                    TextField("Nome 5", text: $names[4])
                    Spacer()
                    TextField("Nome 6", text: $names[5])
                }
                HStack{
                    TextField("Nome 7", text: $names[6])
                    Spacer()
                    TextField("Nome 8", text: $names[7])
                }
                HStack{
                    TextField("Nome 9", text: $names[8])
                    Spacer()
                    TextField("Nome 10", text: $names[9])
                }
            }
            Section (header: Text("Busca de nome")){
                TextField("Fulano da Silva", text: $searchName)
                Button(action: self.nameSearch) {
                    Text("Buscar")
                }
                Text("Resultado da Busca: \(searchMessage)")
            }
        }
        
    }
}

struct Exericio88_Previews: PreviewProvider {
    static var previews: some View {
        Exericio88()
    }
}
