//
//  File.swift
//  Lady2Lady
//
//  Created by Catia Pinto on 19/05/2018.
//  Copyright © 2018 LadiesOfCode. All rights reserved.
//

import Foundation

struct MyData: Codable {
    var name: String
    var email: String
    var notes: String
}

class DataProvider{
    
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("MyData")
    
    func getMyData() -> MyData {
        do {
            let data = try Data(contentsOf: DataProvider.ArchiveURL)
            return try JSONDecoder().decode(MyData.self, from: data)
        } catch {
            return MyData(name: "Sally", email: "sally@mail.com", notes: "Some nice notes about me")
        }
        //return MyData(name: "Sally", email: "sally@mail.com", notes: "Some nice notes about me")
    }
    
    func setMyData(_ data: MyData ) {
        
        let encoder = JSONEncoder()
        
        try? encoder.encode(data).write(to: DataProvider.ArchiveURL)
        
        print("My name is " + data.name)
        print("My email is \(data.email)")
        print("My email is \(data.notes)")
    }
    
    //    func doStuff(data: MyData) {
    //
    //    }
    //
    //    func doStuff(someoneElsesData: MyData) {
    //
    //    }
    
    //    func getName() -> String {
    //        return "Sally"
    //    }
    //
    //    func getEmail() -> String {
    //        return "sally@mail.com"
    //    }
    //
    //    func getNotes() -> String {
    //        return "Some nice notes about me"
    //    }
}
