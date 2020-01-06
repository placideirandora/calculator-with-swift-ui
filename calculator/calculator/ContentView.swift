//
//  ContentView.swift
//  calculator
//
//  Created by Placide IRANDORA on 06/01/2020.
//  Copyright © 2020 Placide IRANDORA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                ForEach(["7", "8", "9", "X"], id: \.self) { button in
                    Text(button)
                        .font(.system(size: 35))
                    .frame(width: 80, height: 80)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
