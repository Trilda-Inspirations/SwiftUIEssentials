//
//  SwiftUIView.swift
//  HostingControllerDemo
//
//  Created by Neil Smyth on 3/12/22.
//

import SwiftUI

struct SwiftUIView: View {
    
    var text: String

    var body: some View {
        VStack {
            Text(text)
            HStack {
                Image(systemName: "smiley")
                Text("This is a SwiftUI View")
            }
        }
        .font(.largeTitle)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(text: "Sample Text")
    }
}
