//
//  Alert.swift
//  GeekFood
//
//  Created by dmitry arkharov on 15/06/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    //MARK: Network Alerts
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("Invalid data recieved from the server"),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                       message: Text("Invalid data recieved from the server"),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidURL = AlertItem(title: Text("Server Error"),
                                       message: Text("Cold not connect to the server. Probably the address is wrong."),
                                       dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                       message: Text("Unable to complete your request. Check your Internet Connection."),
                                       dismissButton: .default(Text("OK")))
    
    
    //MARK: Account Alerts
    static let invalidForm = AlertItem(title: Text("Invalid Form"),
                                       message: Text("Please fill out all the fields in the form."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                       message: Text("Make sure that your Email is correct."),
                                       dismissButton: .default(Text("OK")))
    
    static let userSaveSuccess = AlertItem(title: Text("Profile Saved"),
                                       message: Text("Your Profile was Successfully Saved."),
                                       dismissButton: .default(Text("OK")))
    
    static let invalidUserData = AlertItem(title: Text("Profile Error"),
                                       message: Text("An error occured while saving or retrieving the profile."),
                                       dismissButton: .default(Text("OK")))
}
