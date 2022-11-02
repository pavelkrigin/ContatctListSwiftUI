//
//  ContactList.swift
//  ContatctListSwiftUI
//
//  Created by Pavel Krigin on 2.11.22..
//

import SwiftUI

struct ContactList: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) { contact in
                NavigationLink(destination: ContactDetails(contact: contact)) {
                    Text(contact.fullname)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: <#[Person]#>)
    }
}
