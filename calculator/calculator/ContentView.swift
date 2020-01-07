//
//  ContentView.swift
//  calculator
//
//  Created by Placide IRANDORA on 06/01/2020.
//  Copyright © 2020 Placide IRANDORA. All rights reserved.
//

import SwiftUI

enum CalculatorButton: String {
    case zero, one, two, three, four
    case five, six, seven, eight, nine
    case equals, plus, minus, multiply, divide
    case ac, plusMinus, percent
    
    var title: String {
        switch self {
        case .zero:
            return "0"
        
        case .one:
            return "1"
        
        case .two:
            return "2"
        
        case .three:
            return "3"
            
        case .four:
            return "4"
            
        case .five:
            return "5"
        
        case .six:
            return "6"
        
        case .seven:
            return "7"
        
        case .eight:
            return "8"
        
        case .nine:
            return "9"
        
        case .ac:
            return "AC"
        
        case .plusMinus:
            return "+/-"
        
        case .percent:
            return "%"
            
        case .equals:
            return "="
            
        case .plus:
            return "+"
            
        case .minus:
            return "-"
        
        case .multiply:
            return "x"
        
        case .divide:
            return "/"
            
        default:
            return ""
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .zero, .one, .two, .three, .four, .five, .six, .seven, .eight, .nine:
            return Color(.darkGray)
            
        case .ac, .plusMinus, .percent:
            return Color(.lightGray)
            
        default:
            return Color(.orange)
        }
    }
}

struct ContentView: View {
    
    // Two dimensional array
    let buttons: [[CalculatorButton]] = [
        [.ac, .plusMinus, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .minus],
        [.one, .two, .three, .plus]
    ]
    
    var body: some View {
        // Allign the V and H stacks at the bottom
        ZStack (alignment: .bottom) {
            // Make the whole background color black
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack (spacing: 20) {
                HStack{
                    Spacer()
                    Text("0").foregroundColor(.white).font(.system(size: 60))
                }.padding(40)
                
                // Display the buttons form the dimensional array
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { button in
                            Text(button.title)
                                .font(.system(size: 35))
                                .frame(width: 80, height: 80)
                                .foregroundColor(.white)
                                .background(button.backgroundColor)
                                .cornerRadius(50)
                                    
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
}

// Display the content
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
