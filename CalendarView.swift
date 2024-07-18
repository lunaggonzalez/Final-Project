//
//  CalendarView.swift
//  Final Project
//
//  Created by Luna Gonzalez on 7/16/24.
//

import SwiftUI

struct CalendarView: View {
    @State var selectedDate = Date()
    
    var body: some View {
        ZStack{
            Image("pinkk").resizable().ignoresSafeArea()
            
            VStack {
                Text("Calendar View")
                    .font(.title)
                    .foregroundColor(Color.red)
                CustomDatePicker(selectedDate: $selectedDate)
                    .padding()
                Text(selectedDate.formatted(date: .abbreviated, time: .omitted)) // <-- you can customize (or omit it altogether) however you like!
                Spacer()
            }
        }
    }
}

#Preview {
    CalendarView()
}
