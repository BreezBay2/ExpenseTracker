//
//  UserProfileView.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 21.09.24.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundStyle(Color(.systemGray4))
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                
                Text("Username")
                    .fontWeight(.semibold)
            }
            .padding(.bottom, 50)
            
            Button {
                AuthService.shared.signOut()
            } label: {
                Text("Sign Out")
                    .foregroundStyle(.red)
                    .frame(width: 100, height: 40)
                    .background(Color(.systemGray5))
                    .cornerRadius(8)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    UserProfileView()
}
