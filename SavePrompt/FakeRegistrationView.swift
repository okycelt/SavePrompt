//
//  FakeRegistrationView.swift
//  SavePrompt
//
//  Created by Ondřej Kycelt on 26.03.2025.
//

import SwiftUI

struct FakeRegistrationView: View {
    @State private var login = ""
    @State private var password = ""
    @State private var repeatPassword = ""
    @State private var email = ""

    var navigateBack: () -> Void

    var body: some View {
        VStack(spacing: 16) {
            TextField("Login", text: $login)
                .textFieldStyle(.roundedBorder)
                .textContentType(.username)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .frame(maxWidth: 300)

            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .textContentType(.newPassword)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .frame(maxWidth: 300)

            SecureField("Repeat password", text: $repeatPassword)
                .textFieldStyle(.roundedBorder)
                .textContentType(.newPassword)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .frame(maxWidth: 300)

            TextField("Email", text: $email)
                .textFieldStyle(.roundedBorder)
                .textContentType(.emailAddress)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .frame(maxWidth: 300)

            Button {
                Task {
                    try? await Task.sleep(for: .seconds(2))
                    navigateBack()
                }
            } label: {
                Text("Submit")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}
