//
//  ComicsApi.swift
//  Comic-app-karinca
//
//  Created by Karinca Danielsen on 30/09/2022.
//
import Foundation


struct Response: Codable{
    var results:[Result]
}

struct Result: Codable, Identifiable{
    var id: Int
    var title: String
    var alt: String
}
