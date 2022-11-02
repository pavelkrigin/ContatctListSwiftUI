//
//  Telegramms.swift
//  ContatctListSwiftUI
//
//  Created by Pavel Krigin on 3.11.22..
//

import SwiftUI

struct Telegramms: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts) {contact in
                Section {
                } header: {
                    Text(contact.fullname)
                        .font(.headline)
                        .textCase(.none)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Numbers")
        }
    }
}

struct Telegramms_Previews: PreviewProvider {
    static var previews: some View {
        Telegramms(contacts: Person.getPersonList())
    }
}
