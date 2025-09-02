//
//  ContentView.swift
//  Click
//
//  Created by Valeri Terziyski on 28.08.25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var isShowingSignUp = false

    var body: some View {
        VStack {
            Text("Welcome to Click")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
            Spacer()
            SecondaryButton(title: "Sign Up") {
                isShowingSignUp = true
            }
            .sheet(
                isPresented: $isShowingSignUp,
                onDismiss: { isShowingSignUp = false },
                content: {
                    SignUpView()
                        .presentationDetents([.fraction(0.4)])
                        .presentationCompactAdaptation(.sheet)
                        .presentationContentInteraction(.resizes)
                }
            )
            
        }
        .padding(.all)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}
