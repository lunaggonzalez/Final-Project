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
                    .font(.title)
                }
                
            }
        
        }
    }
}

#Preview {
    HomePage()
}
