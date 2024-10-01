//
//  ListCell.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 30.09.24.
//

import SwiftUI

struct ListCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .foregroundStyle(Color(.systemGray))
                .frame(width: 40, height: 40)
                .padding(.trailing, 5)
            
            VStack(alignment:.leading, spacing: 10) {
                Text(Expense.MOCK_EXPENSES[0].what)
                    .fontWeight(.semibold)
                
                Text("01.01.2024")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(.systemGray))
            }
            
            Spacer()
            
            Text("\(Expense.MOCK_EXPENSES[0].amount, specifier: "%.2f") €")
        }
        
    }
}

#Preview {
    ListCell()
}
