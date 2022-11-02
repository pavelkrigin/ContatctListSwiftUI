//
//  Person.swift
//  ContatctListSwiftUI
//
//  Created by Pavel Krigin on 2.11.22..
//

struct Person: Identifiable {
    var id: Int
    let name: String
    let surname: String
    let email: String
    let telegramm: String
    let gitAccount: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonList() -> [Person] {
        
        
        let names = DataManager().names.shuffled()
        let surnames = DataManager().surnames.shuffled()
        let emails = DataManager().emails.shuffled()
        let telegramms = DataManager().telegramms.shuffled()
        let gitAccounts = DataManager().gitAccounts.shuffled()
        
        var persons: [Person] = []
        
        for index in 0..<names.count {
            let person = Person(id: index,
                                name: names[index],
                                surname: surnames[index],
                                email: emails[index],
                                telegramm: telegramms[index],
                                gitAccount: gitAccounts[index])
                        
            persons.append(person)
        }
        
        return persons
    }
}
