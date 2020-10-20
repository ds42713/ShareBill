//
//  Fooddata.swift
//  ShareBill
//
//  Created by Pongsakorn Praditkanok on 19/10/2563 BE.
//

import Foundation
struct FoodData : Identifiable{
    var id = UUID() // คำสั่ง ID Identifiable
    var name : String
    var cost : Int = 0
}

extension FoodData{
    static func allFood() -> [FoodData] {
           return [
               FoodData(name: "food1" ),
               FoodData(name: "food2" ),
            FoodData(name: "food3" ),
            FoodData(name: "food4" ),
            
            FoodData(name: "food5" ),
         FoodData(name: "food6" ),
            FoodData(name: "food7" )
            
           ]
       }
}
