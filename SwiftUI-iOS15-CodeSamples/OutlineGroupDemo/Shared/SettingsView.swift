//
//  SettingsView.swift
//  OutlineGroupDemo
//
//  Created by Neil Smyth on 3/11/22.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var hybridState: Bool = false
    @State private var electricState: Bool = true
    @State private var fuelCellState: Bool = false
    @State private var inversionState: Bool = true

    struct ColorControl: View {
        
        var color: Color
        var label: String
        
        var body: some View {
            HStack {
                Text(label)
                Spacer()
                Rectangle()
                    .fill(color)
                    .frame(width: 30, height: 30)
            }
            .padding(.leading)
            .scaledToFill()
        }
    }
     
    struct ToggleControl: View {
        var title: String
        @State var state: Bool
        
        var body: some View {
            Toggle(title, isOn: $state)
                .padding(.leading)
        }
    }
    
    var body: some View {
        Form {
            DisclosureGroup {

                ToggleControl(title: " Hybrid Cars", state: hybridState)
                ToggleControl(title: " Electric Cars", state: electricState)
                ToggleControl(title: " Fuel Cell Cars", state: fuelCellState)
            } label : {
                Label("Categories Filters", systemImage: "car.2.fill")
            }
            
            DisclosureGroup {

                ColorControl(color: .red, label: "Background Color")
                ColorControl(color: .blue, label: "ForegroundColor")
                ToggleControl(title: "Color Inversion", state: inversionState)
            } label : {
                Label("Color Settings", systemImage: "scribble.variable")
            }

        }

    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
