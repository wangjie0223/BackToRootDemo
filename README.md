# iOS 多 Tab 页面导航和状态重置功能

本项目展示了一个支持 iOS 多窗口（`UIScene`）架构的功能模块，能够实现以下核心功能：
1. **一键返回初始状态**：快速返回 `HomeViewController`。
2. **Tab 和导航栈重置**：清空所有 Tab 页的导航堆栈，恢复到默认初始页面。
3. **兼容多场景**：支持 iOS 13+ 的多窗口架构，适配现代应用需求。

---

## 功能亮点

- **多 Tab 管理**：支持多 Tab 页应用的导航状态重置功能，适合复杂应用场景。
- **动态场景支持**：利用 `UIScene`，支持多窗口的灵活切换和管理。
- **布局现代化**：基于 UIKit 和 SnapKit，提供高效的布局管理。

---

## 使用场景

本功能适用于以下场景：
- **流程退出**：用户在某个流程中退出时，返回到主页面。
- **状态重置**：在多页面导航后快速恢复到初始状态。
- **复杂导航管理**：多 Tab 页应用需要统一的导航和状态控制。

---

## 实现原理

1. **切换到 Home Tab**
   - 通过更新 `UITabBarController` 的 `selectedIndex` 切换到 `HomeViewController`。

2. **清空导航栈**
   - 调用 `popToRootViewController(animated: false)` 清空导航栈，确保页面堆栈处于初始状态。

3. **支持多窗口**
   - 使用 `UIApplication.shared.connectedScenes` 动态获取当前活跃窗口，实现对根视图控制器的精确管理。

---

## 代码示例

以下是核心实现代码：

```swift
@objc private func backToHome() {
    if let windowScene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene,
       let window = windowScene.windows.first,
       let tabBarController = window.rootViewController as? MainTabBarController {
        
        // 切换到 Home 页
        tabBarController.selectedIndex = 0
        
        // 清空 Other 页的导航栈
        if let otherNav = tabBarController.viewControllers?[1] as? UINavigationController {
            otherNav.popToRootViewController(animated: false)
        }
        
        // 清空 Home 页的导航栈
        tabBarController.viewControllers?[0].navigationController?.popToRootViewController(animated: false)
    }
}
```


联系方式:565241473@qq.com

如果您对项目有任何问题或建议，请通过 Issues 提交，或者联系开发者。
