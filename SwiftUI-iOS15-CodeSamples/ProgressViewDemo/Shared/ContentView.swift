//
//  ContentView.swift
//  Shared
//
//  Created by Neil Smyth on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress: Double = 1.0
    
    var body: some View {
        VStack {
            ProgressView("Task Progress", value: progress, total: 100)
                             .progressViewStyle(MyCustomProgressViewStyle())
                        
                        Slider(value: $progress, in: 1...100, step: 0.1)

        }
        .progressViewStyle(CircularProgressViewStyle())
    }
}

struct ShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .accentColor(.red)
            .shadow(color: Color(red: 0, green: 0.7, blue: 0),
                    radius: 5.0, x: 2.0, y: 2.0)
            .progressViewStyle(LinearProgressViewStyle())
    }
}

struct MyCustomProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        
        let degrees = configuration.fractionCompleted! * 360
        let percent = Int(configuration.fractionCompleted! * 100)
        
        return VStack {
            
            MyCircle(startAngle: .degrees(1), endAngle: .degrees(degrees))
                .frame(width: 200, height: 200)
                .padding(50)
            Text("Task \(percent)% Complete")
        }
    }
}

struct MyCircle: Shape {
    var startAngle: Angle
    var endAngle: Angle

    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                 radius: rect.width / 2, startAngle: startAngle,
                              endAngle: endAngle, clockwise: true)

        return path.strokedPath(.init(lineWidth: 100, dash: [5, 3],
                 dashPhase: 10))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
