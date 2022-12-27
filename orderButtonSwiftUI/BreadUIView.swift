//
//  BreadUIView.swift
//  orderButtonSwiftUI
//
//  Created by Байсаев Зубайр on 27.12.2022.
//

import SwiftUI

struct BreadUIView: View {
    
    var color: Color
    var body: some View {
        VStack {
            Circle()
                .trim(from: 0, to: 0.5)
                .frame(width: 200, height: 200)
                .rotationEffect(Angle(degrees: 180))
                .foregroundColor(color)
        }
    }
    
    
    struct BreadUIView_Previews: PreviewProvider {
        static var previews: some View {
            BreadUIView(color: .red)
        }
    }
    
}
