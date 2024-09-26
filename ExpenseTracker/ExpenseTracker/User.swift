//
//  User.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 25.09.24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let email: String
    let username: String
    let profileImageURL: String?
}
