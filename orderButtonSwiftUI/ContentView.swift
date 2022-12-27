//
//  ContentView.swift
//  orderButtonSwiftUI
//
//  Created by Байсаев Зубайр on 27.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var foodIsOrdered = false
    
    @State var color = Color.white
    @State var cheeseColor = Color.white
    @State var buttonColor = Color.purple
    @State var y = 0.0
    @State var y2 = 0.0
    @State var y3 = 0.0
    @State var title = "order"
    
    var body: some View {
        VStack{
            Spacer()
            
            BreadUIView(color: color)
                .offset(x:0, y: y2)
                .animation(.easeIn, value: foodIsOrdered)
            
            CheeseUIView(color: cheeseColor)
                .offset(x:0, y: y3)
            
            Button(action: orderFood) {
                Text(title)
                    .font(.largeTitle)
                    .padding()
                
            }
            .frame(width: 230, height: 50)
            .background(buttonColor)
            .animation(.easeIn, value: foodIsOrdered)
            .clipShape(Capsule())
            .foregroundColor(.white)
            
            Spacer()
            
            BottomBreadView(color: color)
                .offset(y: y)
                .animation(.easeIn, value: foodIsOrdered)
            Spacer()
            
            Button("reload", action: reload)
            
        }
    }
    
    func reload() {
        
        y = 0.0
        y2 = 0.0
        y3 = 0.0
        
        color = Color.white
        cheeseColor = Color.white
        buttonColor = Color.purple
        title = "order"
    }

    func orderFood() {
        foodIsOrdered.toggle()
        
        y = -138
        y2 = 120
        y3 = 10
        
        color = .orange
        cheeseColor = .yellow
        buttonColor = .red
        title = "on way"
        
        

    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
