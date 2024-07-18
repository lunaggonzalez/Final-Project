//
//  CalendarView.swift
//  Final Project
//
//  Created by Luna Gonzalez on 7/16/24.
//

import SwiftUI

struct CalendarView: View {
    @State var selectedDate = Date()
    @State var estimatedStartDay = "Not Enough Data Yet"
    @State var avgPeriodLen = "5 Days"
    @State var avgCycleLen = "29 Days"
    @State var heaviestFlowDays = "Day 1"
    
    var body: some View {
        ZStack{
            Image("pinkk").resizable().ignoresSafeArea()
            
            VStack {
                Text("Calendar View")
                    .font(.title)
                    .foregroundColor(Color.black)
                CustomDatePicker(selectedDate: $selectedDate)
                    .padding()
                Text(selectedDate.formatted(date: .abbreviated, time: .omitted)) // <-- you can customize (or omit it altogether) however you like!
                Spacer()
                VStack{
                    HStack{
                        Text("")
                        Text("Estimated Start Day:").font(.headline)
                        TextField("", text: $estimatedStartDay)
                    }
                    HStack{
                        Text("")
                        Text("Average Period Length:").font(.headline)
                        TextField("", text: $avgPeriodLen)
                    }
                    HStack{
                        Text("")
                        Text("Average Cycle Length:").font(.headline)
                        TextField("", text: $avgCycleLen)
                    }
                    HStack{
                        Text("")
                        Text("Heaviest Flow Day(s):").font(.headline)
                        TextField("", text: $heaviestFlowDays)
                    }
                }
                Spacer()
                NavigationLink(destination: SymptomsView()) {
                    Image("Symptoms")
                        .resizable()
                        .frame(width:220.0, height:90)
                }
            }
        }
    }
}

#Preview {
    CalendarView()
}
