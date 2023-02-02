//
//  FeedItem.swift
//  Test
//
//  Created by Amber Katyal on 01/02/23.
//

import Foundation

public struct FeedItem {
    public enum Style: CaseIterable {
        case bigTop
        case river
        case ad
        case houseAd
        case slideshow
    }
    
    public let style: Style
    public let title: String
    public let headline: String
    public let image: String?
}
