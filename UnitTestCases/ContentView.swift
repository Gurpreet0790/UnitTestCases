//
//  ContentView.swift
//  UnitTestCases
//
//  Created by ReetDhillon on 2024-02-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            
            
            Button{
                callVehicle()
            } label: {
                Text("Start Vehicle")
            }
            .foregroundColor(.blue)
            .background(.regularMaterial, in: RoundedRectangle(cornerRadius: 20))
            
        }
        .padding()
    }
    
    func callVehicle()
    {
        let Jaguar = Vehicle(type: .Car)
        Jaguar.startEngine(minutes: 60)
        print(Jaguar.returnMiles())
    }
}

#Preview {
    ContentView()
}
