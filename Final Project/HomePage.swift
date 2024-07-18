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
                    Text("Welcome to Red Flags, the period tracker app! In this app, you can record your period and access period related information and facts!")
                        .bold()
                        .multilineTextAlignment(.center)
                        .lineLimit(nil) // Allows unlimited lines
                            .fixedSize(horizontal: false, vertical: true) // Wraps text within the frame
                            .frame(width: 400)
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
                    NavigationLink(destination: Stigma()) {
                        Image("Stigma")
                            .resizable()
                            .frame(width:200, height:90)
                            
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
