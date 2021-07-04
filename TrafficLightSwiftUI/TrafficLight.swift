//
//  TrafficLight.swift
//  TrafficLightSwiftUI
//
//  Created by Андрей Аверьянов on 04.07.2021.
//

import SwiftUI

struct TrafficLight: View {
    var body: some View {
        ZStack {
            Color(red: 0, green: 0.6, blue: 1)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                TrafficLightCircles()
                .padding()
                Spacer()
                
                TrafficLightButton()
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
