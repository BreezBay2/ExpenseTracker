//
//  RegistrationViewModel.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 25.09.24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var username = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, username: username)
    }
}
