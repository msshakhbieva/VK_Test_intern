//
//  TotalReviewsCell.swift
//  Test
//
//  Created by Milana Shakhbieva on 02.03.2025.
//

import UIKit

final class TotalReviewsCell: UITableViewCell {
    
    private let totalReviewsLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCell() {
        contentView.addSubview(totalReviewsLabel)
        totalReviewsLabel.textAlignment = .center
        totalReviewsLabel.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        totalReviewsLabel.textColor = .gray
        totalReviewsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            totalReviewsLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            totalReviewsLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            totalReviewsLabel.leadingAnchor.constraint(greaterThanOrEqualTo: contentView.leadingAnchor, constant: 16),
            totalReviewsLabel.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor, constant: -16)
        ])
    }
    
    func configure(with totalReviews: Int) {
        totalReviewsLabel.text = getCounterWithDeclination(totalReviews, ["отзыв", "отзыва", "отзывов"])
    }
    
    /// Получить счетчик с склонениями
    func getCounterWithDeclination(_ count: Int, _ decls:[String]) -> String {
        if (count > 4 && count < 21) {
            return "\(count) " + decls[2]
        }
        let unitDigit = count % 10
        if (unitDigit > 4 || unitDigit == 0){
            return "\(count) " + decls[2]
        }
        if (unitDigit > 1) {
            return "\(count) " + decls[1]
        }
        return  "\(count) " + decls[0]
    }
    
}
