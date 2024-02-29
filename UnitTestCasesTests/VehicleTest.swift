//
//  VehicleTest.swift
//  UnitTestCasesTests
//
//  Created by ReetDhillon on 2024-02-28.
//

import XCTest
@testable import UnitTestCases

 class VehicleTest: XCTestCase {
    
    var jaguar: Vehicle!
    var boeing: Vehicle!
    

    override func setUpWithError() throws {
        jaguar = Vehicle(type: .Car)
        boeing = Vehicle(type: .Aircraft)
    }

    override func tearDownWithError() throws {
        jaguar = nil
        boeing = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
     
     func testAircraftFasterThanCar() throws{
         //Act
         let minutes = 60
         
         //Arrange
         jaguar.startEngine(minutes: minutes)
         boeing.startEngine(minutes: minutes)
         
         //Assert
         XCTAssertTrue(boeing.returnMiles() > jaguar.returnMiles())
     }
     
     
     func testFetchPostList(){
         let exp = expectation(description: "fetching data from server")
         let session : URLSession = URLSession(configuration: .default)
         let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
         
         guard let customURL = url else { return }
         
         session.dataTask(with: customURL) { data, response, error in
             XCTAssertNotNil(data)
             exp.fulfill()
         } .resume()
         
         waitForExpectations(timeout: 5.0) { (error) in
             print(error?.localizedDescription ?? "Error")
         }
     }
}

