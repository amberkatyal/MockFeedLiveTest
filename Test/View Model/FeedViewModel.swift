//
//  MockClient+Feed.swift
//  Test
//
//  Created by Amber Katyal on 01/02/23.
//

import Foundation
import UIKit

final class FeedViewModel: NSObject {
    
    // MARK: - Properties
    private let client: MockClient
    private(set) var feed: [FeedItem] = []
    
    // MARK: - Inits
    init(client: MockClient = MockClient()) {
        self.client = client
    }
    
    
    func load(completion: (Result<[FeedItem], Error>) -> Void) {
        self.feed = client.getFeed()
        completion(.success([FeedItem]()))
    }
}

extension FeedViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        feed.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FeedTVCell.identifier, for: indexPath) as? FeedTVCell else {
            fatalError("Unable to dequeue correct cell.")
        }
        cell.headingLabel.text = feed[indexPath.row].headline
        cell.subheadingLabel.text = feed[indexPath.row].title
        return cell
    }
    
    
}
