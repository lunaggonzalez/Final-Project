//
//  CalendarView.swift
//  Final Project
//
//  Created by Luna Gonzalez on 7/16/24.
//

import SwiftUI

struct CalendarView: View {
    @State private var datesWithFlow: Set<DateComponents> = []
    
    var body: some View {
        Text("Calendar View")
            .font(.title)
       MultiDatePicker("", selection: $datesWithFlow)
    }
}


#Preview {
    CalendarView()
}
