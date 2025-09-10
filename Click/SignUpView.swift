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
    @State private var confirmPassword: String = ""
    

    private var isEmailValid: Bool {
        // Trim whitespace before validating
        let trimmed = email.trimmingCharacters(in: .whitespacesAndNewlines)
        // Basic RFC 5322-like practical pattern (not fully exhaustive)
        let pattern = #"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$"#
        return trimmed.range(of: pattern, options: [.regularExpression, .caseInsensitive]) != nil
    }
    
    private var isFormValid: Bool {
        isEmailValid && !password.isEmpty && password == confirmPassword
    }
    
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
                
                SecureField("Confirm Password", text: $confirmPassword)
                    .autocorrectionDisabled(true)
                    .textInputAutocapitalization(.never)
                    .keyboardType(.asciiCapable)
                    .textContentType(.password)
            }
            PrimaryButton(title: "Sign Up") {
                // Handle sign up
            }
            .padding(.all)
            .disabled(!isFormValid)
        }
    }
}

#Preview {
    SignUpView()
}
