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
                        
                    Text("Red Flag")
                        .font(.system(size: 48))
                        .bold()
                    //Text("Welcome to Red Flag! ")
                    //Text("This app is here to help YOU track your period!")
                    .padding()
                    NavigationLink(destination: CalendarView()) {
                        Text("Calendar         ")
                            .bold()
                            .tint(.purple)
                            .font(.system(size: 34))
                            .background(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.purple, lineWidth: 2)
                                        )
                            //.border(Color.purple)
                            
                    }
                    
                    NavigationLink(destination: FAQ()) {
                        Text("FAQ                   ")
                            .bold()
                            .tint(.purple)
                            .font(.system(size: 34))
                            .background(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(Color.purple, lineWidth: 2)
                                        )
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
