//
//  CustomView.swift
//  Test
//
//  Created by Amber Katyal on 01/02/23.
//

import Foundation
import UIKit

protocol CustomView {
    associatedtype View
    
    var selfView: View { get }
}

extension CustomView where Self: UIViewController {
    var selfView: View {
        return self.view as! View
    }
}
