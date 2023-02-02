//
//  MockClient.swift
//  Test
//
//  Created by Amber Katyal on 01/02/23.
//

import Foundation

public class MockClient {
    public func getFeed() -> [FeedItem] {
        return buildFeed()
    }
    
    private func buildFeed() -> [FeedItem] {
        var items = [FeedItem]()
        FeedItem.Style.allCases.forEach {
            let max = Int.random(in: 1 ... 10)
            for i in 0..<max {
                let item = FeedItem(style: $0, title: "Headline Number \(i+1) ", headline: "style \($0)", image: nil)
                items.append(item)
            }
        }
        return items
    }
}
//print(MockClient().getFeed().debugDescription)
