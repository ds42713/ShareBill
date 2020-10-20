//
//  FormPeople.swift
//  ShareBill
//
//  Created by Pongsakorn Praditkanok on 19/10/2563 BE.
//

import SwiftUI

struct AddFormPeople: View {
    @State var PeopleList = ""
    var body: some View {
        Form {
            
            Section(header: Text("เพิ่มรายชื่อ") ) {
            TextField(" รายชื่อ ", text: $PeopleList)
                .padding()
        }
        }
    }
}

struct FormPeople_Previews: PreviewProvider {
    static var previews: some View {
        AddFormPeople()
    }
}
