//
//  UserProfileView.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 21.09.24.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .foregroundStyle(Color(.systemGray4))
                .frame(width: 150, height: 150)
                .clipShape(Circle())
            
            Text("Username")
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    UserProfileView()
}
