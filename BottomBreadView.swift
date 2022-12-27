//
//  BottomBreadView.swift
//  orderButtonSwiftUI
//
//  Created by Байсаев Зубайр on 27.12.2022.
//

import SwiftUI

struct BottomBreadView: View {
    var color: Color
    
    var body: some View {
        Rectangle()
            .frame(width: 200, height: 50)
            .cornerRadius(10)
            .foregroundColor(color)
    }
}

struct BottomBreadView_Previews: PreviewProvider {
    static var previews: some View {
        BottomBreadView(color: .orange)
    }
}
