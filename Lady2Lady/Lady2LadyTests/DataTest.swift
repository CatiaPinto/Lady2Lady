//
//  DataTest.swift
//  Lady2LadyTests
//
//  Created by Catia Pinto on 19/05/2018.
//  Copyright © 2018 LadiesOfCode. All rights reserved.
//

import XCTest
@testable import Lady2Lady

class DataTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testGetName(){
//        let provider = DataProvider()
//        let name = provider.getName()
//        XCTAssertEqual(name, "Sally")
//    }
//
//    func testGetEmail() {
//        let provider = DataProvider()
//        let email = provider.getEmail()
//        XCTAssertEqual(email, "sally@mail.com")
//    }
//
//    func testGetNotes() {
//        let provider = DataProvider()
//        let notes = provider.getNotes()
//        XCTAssertEqual(notes, "Some nice notes about me")
//    }
    
    func testGetMyData() {
        
        let testData = MyData(name: "Potatoes", email: "sally@mail.com", notes: "Some nice notes about me")
        
        let provider = DataProvider()
        var myData = provider.getMyData()
        
        var name = myData.name
        var email = myData.email
        var notes = myData.notes
        
        XCTAssertNotEqual(name, "Sally")
        
        provider.setMyData(testData)
        myData = provider.getMyData()
        
        name = myData.name
        email = myData.email
        notes = myData.notes

        XCTAssertEqual(name, "Sally")
        XCTAssertEqual(email, "sally@mail.com")
        XCTAssertEqual(notes, "Some nice notes about me")
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
