//
//  SymptomsView.swift
//  Final Project
//
//  Created by Luna Gonzalez on 7/16/24.
//

import SwiftUI

struct SymptomsView: View {
    @Binding var formattedDate: String 
    @Binding var curDay : Day
    
    
    var body: some View {
        
        
        ZStack{
            Image("pinkk").resizable().ignoresSafeArea()
            
            VStack{
                Text("Symptom Tracker").font(.title)
                    .foregroundColor(Color.black)
                HStack(){
                    Text("")
                    Text("Date: ").font(.headline).foregroundColor(.black)
                    TextField("DD/MM/YYYY", text: $formattedDate)
                }
                
                
                
                Text("Flow")
                    .multilineTextAlignment(.center)
                
                // Flow buttons
                HStack{
                    Button(action: {curDay.flowBool = false
                        curDay.flow = "No flow"
                    }) {
                        Image("Flow0")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                                }
                    Button(action: {curDay.flowBool = true
                                          curDay.flow = "Light flow"
                    }) {
                        Image("Flow1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                                }
                    Button(action: {curDay.flowBool = true
                        curDay.flow = "Medium flow"
                    }) {
                        Image("Flow2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                                }
                    Button(action: {curDay.flowBool = true
                        curDay.flow = "Heavy flow"
                    }) {
                        Image("Flow3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                                }
                    Button(action: {curDay.flowBool = true
                        curDay.flow = "Super Heavy flow"
                    }) {
                        Image("Flow4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                                }
                }
                
                Text("Pain")
                    .multilineTextAlignment(.center)
                
                HStack{
                    Button(action: {curDay.pain = "No pain"
                    }) {
                        Image("Flow0")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                                }
                    Button(action: {curDay.pain = "Mild Pain"
                    }) {
                        Image("Pain1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                                }
                    Button(action: {curDay.pain = "Moderate Pain"
                    }) {
                        Image("Pain2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                                }
                    Button(action: {curDay.pain = "Severe Pain"
                    }) {
                        Image("Pain3")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                                }
                    Button(action: {curDay.pain = "Intense Pain"
                    }) {
                        Image("Pain4")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                                }
                }
                Text("")
                Text("")
                VStack{
                    Text("Symptoms Selected:")
                    HStack{
                        Text("Flow:")
                        TextField("", text: $curDay.flow)
                    }
                    .padding(.leading, 20.0)
                    HStack{
                        Text("Pain:")
                        TextField("", text: $curDay.pain)
                    }.padding(.leading, 20.0)
                }
                
            }
        }
        
    }
}


struct SymptomsView_Previews: PreviewProvider{
    static var previews: some View{
        let mockDate = Day(date: "Example Date")
        SymptomsView(formattedDate: .constant("Example Date"), curDay: .constant(mockDate))
    }
}

