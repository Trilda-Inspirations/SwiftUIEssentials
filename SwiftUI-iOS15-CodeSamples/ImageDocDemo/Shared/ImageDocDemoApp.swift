//
//  ImageDocDemoApp.swift
//  Shared
//
//  Created by Neil Smyth on 3/12/22.
//

import SwiftUI

@main
struct ImageDocDemoApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: ImageDocDemoDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
