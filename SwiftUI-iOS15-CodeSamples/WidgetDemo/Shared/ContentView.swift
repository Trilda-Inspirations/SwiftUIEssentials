//
//  ContentView.swift
//  Shared
//
//  Created by Neil Smyth on 3/14/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                NavigationLink(destination: WeatherDetailView(
                                      name: "Hail Storms",
                                      icon: "cloud.hail")) {
                    Label("Hail Storm", systemImage: "cloud.hail")
                }
                
                NavigationLink(destination: WeatherDetailView(
                                      name: "Thunder Storms",
                                      icon: "cloud.bolt.rain")) {
                    Label("Thunder Storm",
                               systemImage: "cloud.bolt.rain")
                }
                
                NavigationLink(destination: WeatherDetailView(
                                      name: "Tropical Storms",
                                      icon: "tropicalstorm")) {
                    Label("Tropical Storm", systemImage: "tropicalstorm")
                }
                
            }
            .navigationTitle("Severe Weather")
        }
    }
}
