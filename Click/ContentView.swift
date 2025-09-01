//
//  ContentView.swift
//  Click
//
//  Created by Valeri Terziyski on 28.08.25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showSignUp = false

    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome to Click")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom)
                Spacer()
                Button("Sign Up") {
                    showSignUp = true
                }
                .buttonStyle(.glass)
                .buttonSizing(.flexible)
            }
            .padding(.all)
            .frame(maxHeight: .infinity, alignment: .top)
            .navigationDestination(isPresented: $showSignUp) {
                SignUpView()
                    .navigationTitle("Sign Up")
            }
        }
    }
}
