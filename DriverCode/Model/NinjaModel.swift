//
//  NinjaModel.swift
//  DriverCode
//
//  Created by Mukesh Jain on 18/04/22.
//

import Foundation

struct Country: Identifiable, Decodable {
    let id: Int
    let name: String
    let capital: String
    let flagImg: String
}

struct MockData {
    
    static let countries = [country01, country02, country03, country04]
    
    static let country01 = Country(id: 1, name: "India", capital: "Delhi", flagImg: "india")
    static let country02 = Country(id: 2, name: "United States", capital: "Washington D.C.", flagImg: "united_states")
    static let country03 = Country(id: 3, name: "Canada", capital: "Ottawa", flagImg: "canada")
    static let country04 = Country(id: 4, name: "United Kingdom", capital: "London", flagImg: "united_kingdom")
}
