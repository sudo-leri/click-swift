//
//  PrimaryButton.swift
//  Click
//
//  Created by Valeri Terziyski on 3.09.25.
//


import SwiftUI

struct SecondaryButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.semibold)
        }
        .buttonStyle(.glass)
        .controlSize(.large)
        .buttonSizing(.flexible)
    }
}
