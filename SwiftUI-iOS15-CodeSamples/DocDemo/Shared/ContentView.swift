//
//  ContentView.swift
//  Shared
//
//  Created by Neil Smyth on 3/12/22.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: DocDemoDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(DocDemoDocument()))
    }
}
