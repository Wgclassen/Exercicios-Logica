//
//  Exercicio60.swift
//  SwiftBol Logica 16-02
//
//  Created by curitiba01 on 16/02/21.
//

import SwiftUI

struct Exercicio60: View {
    @State private var userCode = ""
    @State private var userPassword = ""
    @State private var loginResut = ""
    let correctCode = "1234"
    let correctPassword = "9999"
    
    
    
    func login() {
        if userCode != correctCode {
            self.loginResut = "Usuário inválido!"
        } else if userPassword != correctPassword {
            self.loginResut = "senha incorreta"
        } else {
            self.loginResut = "Acesso permitido"
        }
    }
    
    
    var body: some View {
        Form {
            Section(header: Text("Digite código de usuário e senha para login")) {
                HStack{
                    Text("Código de usuário")
                    Spacer()
                    TextField("0000", text: $userCode).multilineTextAlignment(.trailing).keyboardType(.decimalPad)
                }
                HStack{
                    Text("Senha")
                    Spacer()
                    SecureField("0000", text: $userPassword).multilineTextAlignment(.trailing).keyboardType(.decimalPad)
                }
                Button(action: self.login) {
                    Text("Login")
                }
                Text("\(loginResut)")
            }
        }
    }
}

struct Exercicio60_Previews: PreviewProvider {
    static var previews: some View {
        Exercicio60()
    }
}
