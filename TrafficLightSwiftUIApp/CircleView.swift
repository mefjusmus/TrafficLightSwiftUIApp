//
//  CircleView.swift
//  TrafficLightSwiftUIApp
//
//  Created by Vladislav Suslov on 10.12.22.
//

import SwiftUI

struct CircleView: View {
    let opacity: Double
    let color: Color
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
    }
    
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(opacity: 1, color: .red)
    }
}
