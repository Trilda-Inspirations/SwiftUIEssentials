//
//  Purchase.swift
//  ShortcutDemo
//
//  Created by Neil Smyth on 7/30/20.
//

import SwiftUI

struct Purchase: Codable, Identifiable {
    var id = UUID()
    var symbol: String
    var quantity: String
    var timestamp: String
}
