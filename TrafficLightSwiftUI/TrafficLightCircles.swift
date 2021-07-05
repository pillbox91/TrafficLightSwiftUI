//
//  TrafficLightCircles.swift
//  TrafficLightSwiftUI
//
//  Created by Андрей Аверьянов on 04.07.2021.
//

import SwiftUI

struct TrafficLightCircles: View {
    let color: UIColor
    let opacity: Double
    
    var body: some View {
        VStack {
            Color(color)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .opacity(opacity)
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
        }
    }
}

struct TrafficLightCircles_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightCircles(color: .red, opacity: 0.3)
    }
}
