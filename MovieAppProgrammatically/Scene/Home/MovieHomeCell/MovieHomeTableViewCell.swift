//
//  MovieHomeTableViewCell.swift
//  MovieAppProgrammatically
//
//  Created by Kadir Hocaoğlu on 1.09.2023.
//

import UIKit
import SnapKit

final class MovieHomeTableViewCell: UITableViewCell {
    
    //MARK: - UI Elements
    private let cellImageView: UIImageView = {
        let image = UIImageView()
        return image
    }()
    private let cellNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    private let cellDescription: UILabel = {
        let label = UILabel()
        return label
    }()


    //MARK: - Life Cycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: - Cell Identifier
    
    enum Identifier: String {
        case custom = "cell"
    }

    
}
extension MovieHomeTableViewCell {
    func configure() {
        cellSubviews()
    }
    func cellSubviews(){
        addSubview(cellImageView)
        addSubview(cellNameLabel)
        addSubview(cellDescription)
    }
}
