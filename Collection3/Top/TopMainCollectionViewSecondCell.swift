//
//  TopMainCollectionViewSecondCell.swift
//  Collection3
//
//  Created by ASW-研修２ on 2020/04/16.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
protocol TopMainCollectionViewSecondCellDelegate: NSObjectProtocol{
}
extension TopMainCollectionViewSecondCellDelegate {
}
// MARK: - Property
class TopMainCollectionViewSecondCell: BaseCollectionViewCell {
    weak var delegate: TopMainCollectionViewSecondCellDelegate? = nil
}
// MARK: - Life cycle
extension TopMainCollectionViewSecondCell {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
// MARK: - Protocol
extension TopMainCollectionViewSecondCell {
}
