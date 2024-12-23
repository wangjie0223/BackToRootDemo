//
//  OtherViewController.swift
//  BackToRootDemo
//
//  Created by 王杰 on 2024/12/23.
//

import UIKit

class OtherViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Other"
        
        let button = UIButton(type: .system)
        button.setTitle("Go to Details", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.addTarget(self, action: #selector(goToDetails), for: .touchUpInside)
        
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    @objc private func goToDetails() {
        let detailVC = OtherDetailViewController()
        detailVC.hidesBottomBarWhenPushed = true // 隐藏 TabBar
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
