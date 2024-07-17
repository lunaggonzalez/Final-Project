//
//  HomePage.swift
//  Final Project
//
//  Created by Luna Gonzalez on 7/16/24.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        
        
        NavigationStack{
            ZStack{
                Image("pinkk")
                
                VStack(){
                    
                    Image("logo")
                    Image("Red Flag")
                        .resizable()
                        .frame(width:300, height:125)
                    //Text("Welcome to Red Flag! ")
                    //Text("This app is here to help YOU track your period!")
                    .padding()
                    NavigationLink(destination: CalendarView()) {
                        Image("Calendar")
                            .resizable()
                            .frame(width:225.0, height:100)
                            
                            //.border(Color.purple)
                            
                    }
                    
                    NavigationLink(destination: FAQ()) {
                        Image("FAQ")
                            .resizable()
                            .frame(width:220.0, height:90)
                            //.border(Color.purple)
                            
                            
                    }
                    .padding()
                    
                }
                
            }
        
        }    }
}

#Preview {
    HomePage()
}
