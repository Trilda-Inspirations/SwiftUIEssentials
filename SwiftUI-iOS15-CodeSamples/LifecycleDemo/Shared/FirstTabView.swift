//
//  FirstTabView.swift
//  LifecycleDemo
//
//  Created by Neil Smyth on 3/10/22.
//

import SwiftUI

struct FirstTabView: View {
    
    @State var title = "View One"
    
    var body: some View {
        Text(title)
            .onAppear(perform: {
                print("onAppear triggered")
            })
            .onDisappear(perform: {
                print("onDisappeared triggered")
            })
            .task(priority: .background) {
                title = await changeTitle()
            }

    }
    
    func changeTitle() async -> String {
        Thread.sleep(forTimeInterval: 5)
        return "Async task complete"
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
