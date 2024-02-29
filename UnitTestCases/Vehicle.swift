//
//  Vehicle.swift
//  UnitTestCases
//
//  Created by ReetDhillon on 2024-02-28.
//

import Foundation

enum VehicleType{
    
    case Metro
    case Aircraft
    case Jet
    case Car
    case Bicycle
    
}
class Vehicle{
    private var type: VehicleType
    private var miles = 0
    
    init(type: VehicleType, miles: Int = 0) {
        self.type = type
        self.miles = miles
    }
    
    func startEngine(minutes: Int){
        var speed = 0
        
        switch type {
        case .Metro:
            speed = 500
        case .Aircraft:
            speed = 800
        case .Jet:
            speed = 900
        case .Car:
            speed = 200
        case .Bicycle:
            speed = 60
        }
        
        self.miles = speed * (minutes/60)
    }
    
    func returnMiles() -> Int{
        return self.miles
    }
    
}
