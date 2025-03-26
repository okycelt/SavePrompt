//
//  ContentView.swift
//  SavePrompt
//
//  Created by Ondřej Kycelt on 26.03.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var path: [Route] = []

    var body: some View {
        NavigationStack(path: $path) {
            Button {
                path.append(.registration)
            } label: {
                Text("Navigate to registration")
            }
            .navigationDestination(for: Route.self) { route in
                switch route {
                case .registration:
                    FakeRegistrationView(
                        navigateBack: { path.removeLast() }
                    )
                }
            }
        }
    }
}

enum Route: Hashable {
    case registration
}
