//
//  AuthService.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 25.09.24.
//

import FirebaseAuth

class AuthService {
    
    static let shared = AuthService()
    
    @MainActor
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
        } catch {
            print("Failed to create user with \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        
    }
    
    private func uploadUserData(withEmail email: String, username: String, id: String) async throws {
        
    }
}
