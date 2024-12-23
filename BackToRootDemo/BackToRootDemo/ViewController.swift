//
//  ViewController.swift
//  BackToRootDemo
//
//  Created by 王杰 on 2024/12/23.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Home"
        
        let label = UILabel()
        label.text = "Home Screen"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}







