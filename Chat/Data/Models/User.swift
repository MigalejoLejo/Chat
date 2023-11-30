//
//  User.swift
//  Chat
//
//  Created by Daniel Chinea on 23/11/23.
//

import Foundation

struct User {
    var id: String
    var firstName: String
    var lastName: String
    var email: String
    var employeePositions: [CompanyID: EmployeePosition]
}

typealias CompanyID = String
typealias EmployeePosition = String
