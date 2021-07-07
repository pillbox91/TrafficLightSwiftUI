//
//  TrafficLight.swift
//  TrafficLightSwiftUI
//
//  Created by Андрей Аверьянов on 04.07.2021.
//

import SwiftUI

enum TrafficLights {
    case red, yellow, green
}

struct TrafficLight: View {
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    @State private var trafficLight = TrafficLights.red
    
    @State private var text = "Start"
    
    func nextColor() {

        let lightIsOn = 1.0
        let lightIsOff = 0.3

        switch trafficLight {
        case .red:
            trafficLight = .yellow
            greenLight = lightIsOff
            redLight = lightIsOn
        case .yellow:
            trafficLight = .green
            redLight = lightIsOff
            yellowLight = lightIsOn
        case .green:
            trafficLight = .red
            greenLight = lightIsOn
            yellowLight = lightIsOff
        }
    }
    
    var body: some View {
        ZStack {
            Color(red: 0, green: 0.6, blue: 1)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                TrafficLightCircles(color: .red, opacity: redLight)
                TrafficLightCircles(color: .yellow, opacity: yellowLight)
                TrafficLightCircles(color: .green, opacity: greenLight)
                    .padding()
                Spacer()
                
                TrafficLightButton(title: text)
                {
                    text = "Next"
                    nextColor()
                }
                .padding()
            }
        }
    }
}

struct TrafficLight_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight()
    }
}
