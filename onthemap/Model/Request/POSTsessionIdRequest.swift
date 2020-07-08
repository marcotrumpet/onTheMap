//
//  LoginRequest.swift
//  onthemap
//
//  Created by Marco Galetta on 08/07/2020.
//  Copyright © 2020 Marco Galetta. All rights reserved.
//


struct LoginRequest: Codable{
    let udacity: LoginData
}

struct LoginData: Codable{
    let username: String
    let password: String
}
