//
//  SignUpView.swift
//  Click
//
//  Created by Valeri Terziyski on 31.08.25.
//

import SwiftUI

struct SignUpView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack{
            Form {
                TextField(text: $email, prompt: Text("E-mail")) {
                    Text("E-mail")
                }
                .autocorrectionDisabled(true)
                .textInputAutocapitalization(.never)
                .textContentType(.emailAddress)
                SecureField(text: $password, prompt: Text("Password")) {
                    Text("Password")
                }
            }
        }
    }
}

#Preview {
    SignUpView()
}
