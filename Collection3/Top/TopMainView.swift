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
    func didSelectItemAt(indexPath:IndexPath)
}
extension TopMainViewDelegate {
}
// MARK: - Property
class TopMainView: BaseView {
    weak var delegate: TopMainViewDelegate? = nil
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
}
// MARK: - Life cycle
extension TopMainView {
    override func awakeFromNib() {
        super.awakeFromNib()
        setDelegate()
        
        collectionViewFlowLayout.estimatedItemSize = CGSize (width: 100, height: 100)
        
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewCell")
        loadCollectionViewCellFromXib(collectionView: collectionView, cellName: "TopMainCollectionViewSecondCell")
    }
}
// MARK: - Protocol
extension TopMainView:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewCell", for: indexPath) as?
            TopMainCollectionViewCell else {return UICollectionViewCell() }
        guard let secondcell = collectionView.dequeueReusableCell(withReuseIdentifier: "TopMainCollectionViewSecondCell", for: indexPath)as?
            TopMainCollectionViewSecondCell else {return UICollectionViewCell() }
        
        switch indexPath.row {
            case 0:
            return cell
            case 1:
            return secondcell
        default:
            return cell
            
        }
    }
    
}

extension TopMainView:UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let delegate = delegate {
            delegate.didSelectItemAt(indexPath: indexPath)
        }
    }
    
}
// MARK: - method
extension TopMainView {
    func setDelegate() {
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}
