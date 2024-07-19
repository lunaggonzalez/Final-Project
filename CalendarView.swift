//
//  CalendarView.swift
//  Final Project
//
//  Created by Luna Gonzalez on 7/16/24.
//

import SwiftUI

class Day {
    var date = ""
    var flowBool = false
    var flow = ""
    var pain = ""
    
    init(date: String){
        self.date = date
        self.flowBool = false
        self.flow = ""
        self.pain = ""
    }
}


struct CalendarView: View {
    @State var selectedDate = Date() // how do I pass this value to symptoms view?
    @State var estimatedStartDay = "Not Enough Data Yet"
    @State var avgPeriodLen = "5 Days"
    @State var avgCycleLen = "29 Days"
    @State var heaviestFlowDays = "Day 1"
    @State var formattedDate: String = ""
    @State var daysDict : [String : Day] = [:]
    @State var curDay : Day = Day(date: "")
    
    
    var body: some View {
        ZStack{
            Image("pinkk").resizable().ignoresSafeArea()
            
            VStack {
                Text("Calendar View")
                    .font(.title)
                    .foregroundColor(Color.black)
                CustomDatePicker(selectedDate: $selectedDate, daysDict: $daysDict)
                    .padding()
                Text(formattedDate)
                    .onChange(of: selectedDate, initial: true) {
                        formattedDate = selectedDate.formatted(date: .abbreviated, time: .omitted)
                        if daysDict.keys.contains(formattedDate){
                            curDay = daysDict[formattedDate]!
                        } else{
                            curDay = Day(date: formattedDate)
                            daysDict[formattedDate]
                        }
                    }
            
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
                NavigationLink(destination: SymptomsView(formattedDate: $formattedDate, curDay: $curDay )) {
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
