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
    
    var fullname: String {
        name + " " + lastname
    }
    var contactInformation: [String] {
        [phone, email]
    }
    
    static func getRandomPersons() -> [Person] {
        let dataStore = DataStore()
        
        var persons: [Person] = []
        
        let shuffledNames = dataStore.names.shuffled()
        let shuffledLastnames = dataStore.lastnames.shuffled()
        let shuffledPhones = dataStore.phones.shuffled()
        let shuffledEmails = dataStore.emails.shuffled()
        
        for index in 0 ..< dataStore.names.count {
            persons.append(
                Person(
                    name: shuffledNames[index],
                    lastname: shuffledLastnames[index],
                    phone: shuffledPhones[index],
                    email: shuffledEmails[index]
                )
            )
        }
        return persons
    }
}
