//
//  ContentView.swift
//  calculator
//
//  Created by Placide IRANDORA on 06/01/2020.
//  Copyright © 2020 Placide IRANDORA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Two dimensional array
    let buttons: Array = [
        ["7", "8", "9", "x"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", ".", ".", "="]
    ]
    
    var body: some View {
        // Allign the V and H stacks at the bottom
        ZStack (alignment: .bottom) {
            // Make the whole background color black
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 10) {
                HStack{
                    Spacer()
                    Text("0").foregroundColor(.white).font(.system(size: 60))
                }.padding()
                
                // Display the buttons form the dimensional array
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { button in
                            Text(button)
                                .font(.system(size: 35))
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                                .background(Color.orange)
                                .cornerRadius(50)
                                    
                        }
                    }
                }
            }
        }
    }
}

// Display the content
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
