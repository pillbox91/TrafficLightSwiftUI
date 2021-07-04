//
//  TrafficLightCircles.swift
//  TrafficLightSwiftUI
//
//  Created by Андрей Аверьянов on 04.07.2021.
//

import SwiftUI

struct TrafficLightCircles: View {
    var body: some View {
        VStack {
            Color(.red)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
            Color(.yellow)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
                .padding()
            Color(.green)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
        }
    }
}

struct TrafficLightCircles_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightCircles()
    }
}
