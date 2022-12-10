//
//  ContentView.swift
//  TrafficLightSwiftUIApp
//
//  Created by Vladislav Suslov on 10.12.22.
//

import SwiftUI

enum CurrentColor {
    case red
    case yellow
    case green
}

struct ContentView: View {
    @State private var currentColor: CurrentColor = .red
    @State private var isTapped = false
    
    @State private var redCircle = CircleView(opacity: 0.3, color: .red)
    @State private var yellowCircle = CircleView(opacity: 0.3, color: .yellow)
    @State private var greenCircle = CircleView(opacity: 0.3, color: .green)
    
    private let lightOn = 1.0
    private let lightOff = 0.3
    
    var body: some View {
        VStack {
            redCircle
            yellowCircle
            greenCircle
            Button(isTapped ? "NEXT" : "START", action: changeColor)
            .buttonStyle(.borderedProminent)
            .padding()
            Spacer()
        }
    }
    
    private func changeColor() {
        if !isTapped {
            isTapped = true
        }
        
        switch currentColor {
        case .red:
            greenCircle = CircleView(opacity: lightOff, color: .green)
            redCircle = CircleView(opacity: lightOn, color: .red)
            currentColor = .yellow
        case .yellow:
            redCircle = CircleView(opacity: lightOff, color: .red)
            yellowCircle = CircleView(opacity: lightOn, color: .yellow)
            currentColor = .green
        case .green:
            yellowCircle = CircleView(opacity: lightOff, color: .yellow)
            greenCircle = CircleView(opacity: lightOn, color: .green)
            currentColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
