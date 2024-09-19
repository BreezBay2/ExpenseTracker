//
//  CustomTabBarView.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 17.09.24.
//

import SwiftUI

struct CustomTabBarView: View {
    @Binding var currentTab: Tab
    
    var body: some View {
        HStack {
            TabBarButton(imageName: Tab.calendar.rawValue)
                .frame(width: 55, height: 55)
                .onTapGesture {
                    currentTab = .calendar
                }
            
            Spacer()
            
            TabBarButton(imageName: Tab.history.rawValue)
                .frame(width: 55, height: 55)
                .onTapGesture {
                    currentTab = .history
                }
            
            Spacer()
            
            TabBarButton(imageName: Tab.add.rawValue)
                .frame(width: 55, height: 55)
                .onTapGesture {
                    currentTab = .add
                }
            
            Spacer()
            
            TabBarButton(imageName: Tab.search.rawValue)
                .frame(width: 55, height: 55)
                .onTapGesture {
                    currentTab = .search
                }
            
            Spacer()
            
            TabBarButton(imageName: Tab.profile.rawValue)
                .frame(width: 55, height: 55)
                .onTapGesture {
                    currentTab = .profile
                }
        }
        .frame(width: 55 * CGFloat(Tab.allCases.count) + 90)
        .tint(.black)
        .background(Color.lightblue)
        .clipShape(RoundedRectangle(cornerRadius: 15))
        .overlay{
            SelectedTabCircleView(currentTab: $currentTab)
        }
        .shadow(color: .gray.opacity(0.5), radius: 5)
        .animation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 1), value: currentTab)
    }
}

private struct TabBarButton: View {
    let imageName: String
    var body: some View {
        Image(systemName: imageName)
            .renderingMode(.template)
            .tint(.black)
            .fontWeight(.bold)
    }
}

struct SelectedTabCircleView: View {
    @Binding var currentTab: Tab
    
    private var horizontalOffset: CGFloat {
        switch currentTab {
        case .calendar:
            return -155
        case .history:
            return -78
        case .add:
            return 0
        case .search:
            return 78
        case .profile:
            return 155
        }
    }
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 14)
                .fill(.white)
                .frame(width: 50, height: 50)
            
            TabBarButton(imageName: "\(currentTab.rawValue)")

        }
        .offset(x: horizontalOffset)
    }
}

#Preview {
    CustomTabBarView(currentTab: .constant(.add))
}
