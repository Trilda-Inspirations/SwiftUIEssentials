//
//  ContentView.swift
//  Shared
//
//  Created by Neil Smyth on 3/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MyScrollView(text: "UIView in SwiftUI")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
