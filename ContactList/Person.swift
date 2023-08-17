//
//  Person.swift
//  ContactList
//
//  Created by Goodwasp on 17.08.2023.
//

struct Person {
    let name: String
    let lastname: String
    let phone: String
    let email: String
    
    static func getRandomPersons() -> [Person] {
        let dataStore = DataStore()
        
        var persons: [Person] = []
        
        for _ in dataStore.names {
            let index = Int.random(in: 0 ..< dataStore.emails.count)
            
            persons.append(Person(
                name: dataStore.names.remove(at: index),
                lastname: dataStore.lastname.remove(at: index),
                phone: dataStore.phones.remove(at: index),
                email: dataStore.emails.remove(at: index)))
        }
        return persons
    }
}
