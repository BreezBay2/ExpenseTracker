//
//  ExpenseDetailView.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 01.10.24.
//

import SwiftUI

struct ExpenseDetailView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundStyle(Color(.systemGray3))
            
            Text(Expense.MOCK_EXPENSES[0].what)
            
            Text("\(Expense.MOCK_EXPENSES[0].amount, specifier: "%.2f")")
            
            Text(Expense.MOCK_EXPENSES[0].category)
            
            Text("\(Expense.MOCK_EXPENSES[0].timestamp.formatted())")
        }
    }
}

#Preview {
    ExpenseDetailView()
}
