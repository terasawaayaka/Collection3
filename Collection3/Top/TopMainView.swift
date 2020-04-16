//
//  TopMainView.swift
//  Collection3
//
//  Created by ASW-研修２ on 2020/04/16.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
protocol TopMainViewDelegate: NSObjectProtocol{
}
extension TopMainViewDelegate {
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var collectionView: UICollectionView!
}
// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegate()
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewCell")
    }
}
// MARK: - Protocol
extension TopMainView:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewCell", for: indexPath) as?
            TopMainCollectionViewCell else {return UICollectionViewCell() }
        
        return cell
    }
    
}
// MARK: - method
extension TopMainView {
    func setDelegate() {
        collectionView.dataSource = self
    }
}
