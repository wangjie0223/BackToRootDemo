//
//  Untitled.swift
//  BackToRootDemo
//
//  Created by 王杰 on 2024/12/23.
//
import UIKit

class OtherDetailViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Detail"
        
        let label = UILabel()
        label.text = "Other Detail Screen"
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        
        let button = UIButton(type: .system)
        button.setTitle("Back to Home", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .medium)
        button.addTarget(self, action: #selector(backToHome), for: .touchUpInside)
        
        view.addSubview(label)
        view.addSubview(button)
        
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-20)
        }
        
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(label.snp.bottom).offset(20)
        }
    }
    
    @objc private func backToHome() {
//        guard let tabBarController = UIApplication.shared.keyWindow?.rootViewController as? MainTabBarController else { return }
//        
//        // 切换到 Home 页
//        tabBarController.selectedIndex = 0
//        
//        // 清空 Other 页的导航堆栈
//        if let otherNav = tabBarController.viewControllers?[1] as? UINavigationController {
//            otherNav.popToRootViewController(animated: false)
//        }
//        
//        // 返回到 Home 页
//        tabBarController.viewControllers?[0].navigationController?.popToRootViewController(animated: false)
        
        
        if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene,
           let window = scene.windows.first {
            guard let tabBarController = window.rootViewController as? MainTabBarController else { return }
            
            // 切换到 Home 页
            tabBarController.selectedIndex = 0
            
            // 清空 Other 页的导航堆栈
            if let otherNav = tabBarController.viewControllers?[1] as? UINavigationController {
                otherNav.popToRootViewController(animated: false)
            }
            
            // 返回到 Home 页
            tabBarController.viewControllers?[0].navigationController?.popToRootViewController(animated: false)
        }
        
        
    }
}
