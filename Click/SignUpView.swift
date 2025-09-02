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
    @State private var comfirmPassword: String = ""
    
    var body: some View {
        VStack{
            Form {
                TextField("E-mail", text: $email)
                .autocorrectionDisabled(true)
                .textInputAutocapitalization(.never)
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                
                SecureField("Password", text: $password)
                .autocorrectionDisabled(true)
                .textInputAutocapitalization(.never)
                .keyboardType(.asciiCapable)
                .textContentType(.newPassword)
                
                SecureField("Confirm Password", text: $comfirmPassword)
                .autocorrectionDisabled(true)
                .textInputAutocapitalization(.never)
                .keyboardType(.asciiCapable)
                .textContentType(.password)

            }
            
            Spacer()
            
            PrimaryButton(title: "Sign Up") {
                
            }
            .padding(.all)
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    SignUpView()
}
