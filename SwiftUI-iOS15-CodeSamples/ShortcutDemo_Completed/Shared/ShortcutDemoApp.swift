//
//  ShortcutDemoApp.swift
//  Shared
//
//  Created by Neil Smyth on 7/30/20.
//

import SwiftUI
import Intents

@main
struct ShortcutDemoApp: App {
    
    @Environment(\.scenePhase) private var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { phase in
                         INPreferences.requestSiriAuthorization({status in
                         // Handle errors here
                     })
                 }
    }
}

struct ShortcutDemoApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
