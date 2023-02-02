//
//  FeedViewController.swift
//  Test
//
//  Created by Amber Katyal on 01/02/23.
//

import UIKit

class FeedViewController: UIViewController, CustomView {
    typealias View = FeedView
    // MARK: - Properties
    private let viewModel: FeedViewModel
    
    // MARK: - Inits
//    init(viewModel: FeedViewModel) {
//        self.viewModel = viewModel
//        super.init(nibName: nil, bundle: nil)
//    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        self.viewModel = FeedViewModel()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        self.viewModel = FeedViewModel()
        super.init(coder: coder)
    }
    // MARK: - Life Cycle

//    override func loadView() {
//        self.view = FeedView()
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        viewModel.load { [weak self] result in
            DispatchQueue.main.async {
                self?.selfView.tableView.reloadData()
            }
        }
    }
    
    // MARK: - Configure
    private func setup() {
        self.view = FeedView()
        selfView.tableView.dataSource = self.viewModel
    }
}
