//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Jaime Uribe on 15/11/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
