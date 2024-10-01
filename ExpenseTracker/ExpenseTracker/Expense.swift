//
//  Expense.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 30.09.24.
//

import Foundation

struct Expense: Identifiable, Codable {
    
    let id: String
    let ownerUid: String
    var amount: Double
    var what: String
    var category: String
    let timestamp: Date
}

extension Expense {
    static var MOCK_EXPENSES: [Expense] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, amount: 100.00, what: "Douglas", category: "Shopping", timestamp: Date()),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, amount: 15.01, what: "Bobs Burgers", category: "Eating", timestamp: Date()),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, amount: 44.44, what: "Kaufland", category: "Groceries", timestamp: Date()),
    ]
}
