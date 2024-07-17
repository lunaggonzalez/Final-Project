//
//  Date.swift
//  Final Project
//
//  Created by Luna Gonzalez on 7/17/24.
//
import SwiftUI
import Foundation

extension Date {
    func getAllDates() -> [Date] {
        let calendar = Calendar.current
        
        // get start date
        let startDate = calendar.date(from: calendar.dateComponents([.year, .month], from: self))!
        
        let range = calendar.range(of: .day, in: .month, for: self)!
        
        return range.compactMap { day -> Date in
            calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
    }
}

struct DateValue: Identifiable {
    var id = UUID().uuidString // a unique identifier to make this struct conform to the Identifiable protocol
    var day: Int // date in number format
    var date: Date
    var flow: Bool //true if flow on that day, false, if not
}

struct CustomDatePicker: View {
    // variable to keep track of what date a user clicks on
    @Binding var selectedDate: Date
    
    @State private var month = 0
    @State private var currentDisplayedMonth = Date()
    
    let daysOfWeek = ["S", "M", "T", "W", "T", "F", "S"]
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    
    var body: some View {
        VStack {
            HStack {
                // show the previous month
                Button {
                    month -= 1
                } label: {
                    Image(systemName: "chevron.left") // <-- you can use any image you like!
                        .foregroundStyle(.pink.opacity(0.7)) // <-- if not using a system symbol, this isn't necessary
                }
                
                VStack(alignment: .leading, spacing: 10) {
                    // display the shown month and year
                    Text("\(extractMonthYear())")
                    
                    // display days of week
                    HStack(spacing: 0) {
                        ForEach(daysOfWeek.indices, id:\.self) { day in
                            Text(daysOfWeek[day])
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    // display dates in numbers
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(extractDates()) { value in
                            VStack(spacing: 0) {
                                if value.day != -1 {
                                    ZStack {
                                        Circle()
                                            .fill(value.flow == true ? .red.opacity(0.3) : .clear) // hopefully marks days with flow?
                                            .fill(selectedDate == value.date ? .pink.opacity(0.3) : .clear) // using a ternary operator!
                                            
                                        Text("\(value.day)")
                                            .foregroundStyle(isToday(date: value.date) ? .pink.opacity(0.8) : .black) // <-- you can customize the colors here!
                                    }
                                    .frame(width: 30, height: 30)
                                }
//                                if value.flow == true{ // period                                     ZStack {
//                                        Circle
//                                    }
                            }
                            .onTapGesture {
                                // update the selected date
                                selectedDate = value.date
                            }
                        }
                    }
                }
                
                // show the next month
                Button {
                    month += 1
                } label: {
                    Image(systemName: "chevron.right") // <-- you can use any image you like!
                        .foregroundStyle(.pink.opacity(0.7))
                }
            }
        }
        .onChange(of: month) {
            // update the month to display
            currentDisplayedMonth = getCurrentMonth()
        }
    }
    
    // check whether a date is the same as today
    func isToday(date: Date) -> Bool {
        return Calendar.current.startOfDay(for: Date()) == Calendar.current.startOfDay(for: date)
    }
    
    // extract month and year to display
    func extractMonthYear() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM YYYY"
        return formatter.string(from: currentDisplayedMonth)
    }
    
    // update to a new month
    func getCurrentMonth() -> Date {
        guard let currentMonth = Calendar.current.date(byAdding: .month, value: month, to: Date()) else { return Date() }
        return currentMonth
    }
    
    // get an array of all dates in a given month
    func extractDates() -> [DateValue] {
        let currentMonth = getCurrentMonth()
        var dates = currentMonth.getAllDates().compactMap { date -> DateValue in
            let day = Calendar.current.component(.day, from: date)
            return DateValue(day: day, date: date, flow: false)
        }
        
        // add offset days
        let firstWeekDay = Calendar.current.component(.weekday, from: dates.first?.date ?? Date())
        
        for _ in 0..<firstWeekDay-1 {
            dates.insert(DateValue(day: -1, date: Date(), flow: false), at: 0)
        }
        
        return dates
    }
}

