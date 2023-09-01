//
//  MovieHomeViewController.swift
//  MovieAppProgrammatically
//
//  Created by Kadir Hocaoğlu on 1.09.2023.
//

import UIKit
import SnapKit

final class MovieHomeViewController: UIViewController {

    // MARK: - UI Elements
    private let tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    // MARK: - Properties
    
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
        makeTableView()
    }
    
    // MARK: - Functions
    private func configure() {
        drawDesign()
        addElementSubviews()
    }
    
    private func drawDesign() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MovieHomeTableViewCell.self, forCellReuseIdentifier: MovieHomeTableViewCell.Identifier.custom.rawValue)
    }
    private func addElementSubviews() {
        view.addSubview(tableView)
    }
    
    // MARK: - Actions
    

}

// MARK: - Extensions

extension MovieHomeViewController: ConfigureTableView {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MovieHomeTableViewCell = tableView.dequeueReusableCell(withIdentifier: MovieHomeTableViewCell.Identifier.custom.rawValue) as? MovieHomeTableViewCell else { return  UITableViewCell() }
        return cell
    }
}

extension MovieHomeViewController {
    private func makeTableView() {
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
