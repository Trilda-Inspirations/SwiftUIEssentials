//
//  CarStore.swift
//  ListNavDemo
//
//  Created by Neil Smyth on 3/11/22.
//

import SwiftUI
import Combine

class CarStore : ObservableObject {
    
    @Published var cars: [Car]
    
    init (cars: [Car] = []) {
        self.cars = cars
    }
}
