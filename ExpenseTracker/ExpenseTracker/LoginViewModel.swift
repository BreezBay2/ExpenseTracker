//
//  LoginViewModel.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 27.09.24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
