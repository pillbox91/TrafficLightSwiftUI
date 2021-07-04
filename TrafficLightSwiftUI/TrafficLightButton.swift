//
//  TrafficLightButton.swift
//  TrafficLightSwiftUI
//
//  Created by Андрей Аверьянов on 04.07.2021.
//

import SwiftUI

struct TrafficLightButton: View {
    @State private var text = "Start"
    @State private var redLight = TrafficLightCircles()
    
    var body: some View {
        Button(action: {
            text = "Next"
            
        }) {
            ZStack {
                Color(.orange)
                    .frame(width: 125, height: 50)
                    .clipShape(Rectangle())
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 3))
                    .shadow(radius: 10)
                    
                Text("\(text)")
                    .font(.title)
                    .foregroundColor(.black)
            }
        }
    }
}

struct TrafficLightButton_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightButton()
    }
}
