//
//  ContentView.swift
//  CalculatorWithSwift
//
//  Created by Support on 2.10.2022.
//  Copyright © 2022 Support. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let buttons = [
        ["7", "8" , "9" , "X"],
        ["4", "5" , "6" , "-"],
        ["1", "2" , "3" , "+"],
        ["0", "." , "." , "="],
    ]
    
    var body: some View{
        
        ZStack (alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
        
        
            VStack(spacing: 12) {
            
            HStack {
                Spacer()
                Text("42").foregroundColor(.white)
                    .font(.system(size: 64))
            }.padding()
            
            ForEach(buttons, id: \.self) { row in
                
                HStack {
                    ForEach(row, id: \.self) { button in
                        Text(button)
                        .font(.system(size: 32))
                            .frame(width: 80, height: 80)
                            .foregroundColor(.white)
                            .background(Color.yellow)
                            .cornerRadius(40)
                        
                        }
                    }
                }
            }.padding(.bottom)
        
            
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
