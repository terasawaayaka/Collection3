//
//  TopViewController.swift
//  Collection3
//
//  Created by ASW-研修２ on 2020/04/16.
//  Copyright © 2020 ASW-研修２. All rights reserved.
//

import UIKit

import PGFramework
// MARK: - Property
class TopViewController: BaseViewController {
    @IBOutlet weak var topMainView: TopMainView!
}
// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        setDelegate()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}
// MARK: - Protocol
extension TopViewController:TopMainViewDelegate {
    func didSelectItemAt() {
     let nextViewController = NextViewController()
        navigationController?.pushViewController(nextViewController, animated: true)
        animatorManager.navigationType = .slide_push
    }
}
// MARK: - method
extension TopViewController {
    func setDelegate() {
        topMainView.delegate = self
    }
}
