//
//  GetCompanyModel.swift
//  TestTaskAvito
//
//  Created by Антон Денисюк on 08.11.2022.
//

import Foundation

// MARK: - ViewModel

struct CompanyModel: Codable {
    let company: Company
}

// MARK: - Company

struct Company: Codable {
    let name: String
    var employees: [Employee]
}

// MARK: - Employee

struct Employee: Codable {
    let name, phoneNumber: String
    let skills: [String]

    enum CodingKeys: String, CodingKey {
        case name
        case phoneNumber = "phone_number"
        case skills
    }
}

// MARK: - Comparable

extension Employee: Comparable {
    static func < (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.name < rhs.name
    }

    static func > (lhs: Employee, rhs: Employee) -> Bool {
        return lhs.name > rhs.name
    }
}
