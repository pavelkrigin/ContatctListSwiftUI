//
//  Contact.swift
//  ContatctListSwiftUI
//
//  Created by Pavel Krigin on 3.11.22..
//

import SwiftUI

struct Contact: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
        }
        .navigationTitle(contact.fullname)
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        Contact(contact: Person.getPersonList().first!)
    }
}
