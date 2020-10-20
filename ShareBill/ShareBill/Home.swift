//
//  Home.swift
//  ShareBill
//
//  Created by Pongsakorn Praditkanok on 14/10/2563 BE.
//

import SwiftUI

struct Home: View {
    @State var isAddPeople = false
    @State var isAddFood = false
    @State var PeopleList = Peopledata.allPeople()
    @State var FoodList = FoodData.allFood()
    var body: some View {
        VStack {
            HStack {
                Text("จัดการค่าอาหาร")
                    .font(.title)
                    .bold()
                    .padding()
                Spacer()
            }
                HStack(alignment: .top ) {
                    FoodView(isAddFood: false)
                    ScrollView(.horizontal) {
                    VStack(alignment: .leading ) {
                        PeopleView(isAddPeople: false)
                        
                        CostView()
                        
                    }
                    }
                    Spacer()
                }
        }.padding()
        
        
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct PeopleView: View {
    @State var isAddPeople :Bool
    @State var PeopleList = Peopledata.allPeople()
    var body: some View {
        HStack {
            
            ForEach(PeopleList) { PeopleList in
                Text(PeopleList.name).padding().frame(width: 100, height: 75, alignment: .center).border(Color.black, width: 1)
            }
            Button(action: {
                self.isAddPeople = true
            }) {
                Text(" + ").padding().frame(width: 100, height: 75, alignment: .center).border(Color.black, width: 1)
            }
        }.sheet(isPresented: $isAddPeople) {
            AddFormPeople()
        }
    }
}

struct FoodView: View {
    @State var isAddFood :Bool
    @State var FoodList = FoodData.allFood()
    var body: some View {
        VStack {
            Text("รายการ").padding().frame(width: 100, height: 75, alignment: .center).border(Color.black, width: 1)
        ForEach(FoodList) { FoodList in
            VStack {
                Text(FoodList.name)
                Text("\(FoodList.cost)")
            }.padding().frame(width: 100, height: 75, alignment: .center).border(Color.black, width: 1)
        }
            Button(action: {
                self.isAddFood = true
            }) {
                Text(" + ").padding().frame(width: 100, height: 75, alignment: .center).border(Color.black, width: 1)
            }
        }
    }
}

struct CostView: View {
    @State var PeopleList = Peopledata.allPeople()
    @State var FoodList = FoodData.allFood()
    var body: some View {
        
        ForEach(FoodList) { FoodList in
            HStack {
            ForEach(PeopleList) { PeopleList in
            //    costPeople(people: PeopleList.count, cost: FoodList.cost)
            Text("\(FoodList.cost)").padding().frame(width: 100, height: 75, alignment: .center).border(Color.black, width: 1)
            }
            }
        }
    }
    func costPeople(people: Int , cost: Int) -> Int {
        let costPeople = cost / people
        return costPeople
    }
}
