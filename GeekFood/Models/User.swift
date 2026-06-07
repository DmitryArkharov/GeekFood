//
//  User.swift
//  GeekFood
//
//  Created by dmitry arkharov on 15/06/2024.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
    var hotSouce = false
    var soySouce = false
    var ketchup = false
    
}
