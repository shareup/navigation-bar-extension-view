//
//  SceneDelegate.swift
//  ExtendingNavigationBar
//
//  Created by Sashko Potapov on 15.11.2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        
        UINavigationBar.setUpAppearance()

        self.window = UIWindow(windowScene: scene)
        
        let initialViewController = ViewController()
        let rootViewController = UINavigationController(rootViewController: initialViewController)
        rootViewController.navigationBar.prefersLargeTitles = true
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
    }
}
