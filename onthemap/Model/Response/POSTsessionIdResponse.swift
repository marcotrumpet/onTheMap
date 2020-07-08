//
//  LoginResponse.swift
//  onthemap
//
//  Created by Marco Galetta on 08/07/2020.
//  Copyright © 2020 Marco Galetta. All rights reserved.
//


import Foundation

// MARK: Response Template when user is found
struct LoginResponse: Codable{
    let account: Account
    let session: Session
}

struct Account: Codable{
    let registered: Bool
    let key: String
}

struct Session: Codable{
    let id: String
    let expiration: String
}

// MARK: Response Template when user not found
struct ErrorResponse: Codable{
    let status: Int
    let error: String
}

extension ErrorResponse: LocalizedError {
    var errorDescription: String? {
        return error
    }
}
