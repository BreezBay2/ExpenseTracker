//
//  MainTabView.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 16.09.24.
//

import SwiftUI

struct MainTabView: View {
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @State private var selectedTab: Tab = Tab.calendar
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                CalendarView()
                    .tag(Tab.calendar)
                
                Text("History")
                    .tag(Tab.history)
                
                Text("Add")
                    .tag(Tab.add)
                
                Text("Search")
                    .tag(Tab.search)
                
                UserProfileView()
                    .tag(Tab.profile)
            }
            
            CustomTabBarView(currentTab: $selectedTab)
        }
    }
}

#Preview {
    MainTabView()
}
