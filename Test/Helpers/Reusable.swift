//
//  Reusable.swift
//  Test
//
//  Created by Amber Katyal on 01/02/23.
//

import UIKit

protocol Reusable {
    static var identifier: String { get }
    
}

extension Reusable {
    static var identifier: String {
        return String(describing: self)
    }
}
