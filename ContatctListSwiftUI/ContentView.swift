//
//  ContentView.swift
//  ContatctListSwiftUI
//
//  Created by Pavel Krigin on 2.11.22..
//

import SwiftUI

struct ContentView: View {
    let contacts = Person.getPersonList()
    
    var body: some View {
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Label("Contacts", systemImage: "person.3")
                }
            Telegramms(contacts: contacts)
                .tabItem {
                    Label("Numbers", systemImage: "phone")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
