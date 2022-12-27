//
//  CheeseUIView.swift
//  orderButtonSwiftUI
//
//  Created by Байсаев Зубайр on 28.12.2022.
//

import SwiftUI

struct CheeseUIView: View {
    
    var color: Color
    var body: some View {
        Rectangle()
            .frame(width: 220, height: 10)
            .cornerRadius(10)
            .foregroundColor(color)
    }
}

struct CheeseUIView_Previews: PreviewProvider {
    static var previews: some View {
        CheeseUIView(color: .yellow)
    }
}
