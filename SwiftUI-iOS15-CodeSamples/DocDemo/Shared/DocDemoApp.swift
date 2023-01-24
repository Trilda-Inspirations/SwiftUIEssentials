//
//  DocDemoApp.swift
//  Shared
//
//  Created by Neil Smyth on 3/12/22.
//

import SwiftUI

@main
struct DocDemoApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: DocDemoDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
