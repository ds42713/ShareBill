//
//  Peopledata.swift
//  ShareBill
//
//  Created by Pongsakorn Praditkanok on 19/10/2563 BE.
//

import Foundation
struct Peopledata : Identifiable{
    var id = UUID() // คำสั่ง ID Identifiable
    var name : String

}

extension Peopledata{
    static func allPeople() -> [Peopledata] {
           return [
            Peopledata(name: "people 1"),
            Peopledata(name: "people 2"),
            
            Peopledata(name: "people 3"),
            Peopledata(name: "people 4"),
            Peopledata(name: "people 5"),
            Peopledata(name: "people 6")
           ]
       }
}
