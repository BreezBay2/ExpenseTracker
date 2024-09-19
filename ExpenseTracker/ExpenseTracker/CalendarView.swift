//
//  CalendarView.swift
//  ExpenseTracker
//
//  Created by Taro Altrichter on 18.09.24.
//

import SwiftUI

struct CalendarView: View {
    
    @State private var date = Date.now
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    @State private var days: [Date] = []
    
    var body: some View {
        HStack {
            Text("\(Date.now.formatted())")
            
            Spacer()
            
            Button {
                print("previous month")
            } label: {
                Image(systemName: "chevron.left")
            }
            
            Button {
                print("next month")
            } label: {
                Image(systemName: "chevron.right")
            }
            
            
        }
        .padding(.horizontal, 30)
        
        LazyVGrid(columns: columns) {
            ForEach(days, id: \.self) { day in
                if day.monthInt != date.monthInt {
                    Text("")
                } else {
                    Text(day.formatted(.dateTime.day()))
                        .frame(maxWidth: .infinity, minHeight: 40)
                }
            }
        }
        .padding()
        .onAppear {
            days = date.calendarDisplayDays
        }
        .onChange(of: date) {
            days = date.calendarDisplayDays
        }
        
        List {
            Section("September 2024") {
                Text("Hello World")
                Text("Hello World")
                Text("Hello World")
            }
                
            Section("August 2024") {
                Text("Hello World")
                Text("Hello World")
            }
            
            Section("July 2024") {
                Text("Hello World")
                Text("Hello World")
            }
            
            Section("June 2024") {
                Text("Hello World")
                Text("Hello World")
            }
        }
        
    }
}

extension Date {
    var startOfMonth: Date {
        Calendar.current.dateInterval(of: .month, for: self)!.start
    }
    
    var endOfMonth: Date {
        let lastDay = Calendar.current.dateInterval(of: .month, for: self)!.end
        return Calendar.current.date(byAdding: .day, value: -1, to: lastDay)!
    }
    
    var startOfPreviousMonth: Date {
        let dayInPreviousMonth = Calendar.current.date(byAdding: .month, value: -1, to: self)!
        return dayInPreviousMonth.startOfMonth
    }
    
    var numberOfDaysInMonth: Int {
        Calendar.current.component(.day, from: endOfMonth)
    }
    
    var sundayBeforeStart: Date {
        let startOfMonthWeekday = Calendar.current.component(.weekday, from: startOfMonth)
        let numberFromPreviousMonth = startOfMonthWeekday - 1
        return Calendar.current.date(byAdding: .day, value: -numberFromPreviousMonth, to: startOfMonth)!
    }
    
    var calendarDisplayDays: [Date] {
        var days: [Date] = []
        
        for dayOffset in 0..<numberOfDaysInMonth {
            let newDay = Calendar.current.date(byAdding: .day, value: dayOffset, to: startOfMonth)
            days.append(newDay!)
        }
        
        for dayOffset in 0..<startOfPreviousMonth.numberOfDaysInMonth {
            let newDay = Calendar.current.date(byAdding: .day, value: dayOffset, to: startOfPreviousMonth)
            days.append(newDay!)
        }
        
        return days.filter { $0 >= sundayBeforeStart && $0 <= endOfMonth}.sorted(by: <)
    }
    
    var monthInt: Int {
        Calendar.current.component(.month, from: self)
    }
}

#Preview {
    CalendarView()
}
