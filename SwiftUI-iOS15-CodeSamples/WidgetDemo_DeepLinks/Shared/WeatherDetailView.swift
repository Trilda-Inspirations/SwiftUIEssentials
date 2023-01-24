//
//  WeatherDetailView.swift
//  WidgetDemo
//
//  Created by Neil Smyth on 3/14/22.
//

import SwiftUI

struct WeatherDetailView: View {
    
    var name: String
    var icon: String

    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                    .scaledToFit()
                    .frame(width: 150.0, height: 150.0)
            Text(name)
                .padding()
                .font(.title)
            Text("If this were a real weather app, a description of \(name) would appear here.")
                .padding()
            Spacer()
        }
    }
}

struct WeatherDetailView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDetailView(name: "Thunder Storms", icon: "cloud.bolt")
    }
}
