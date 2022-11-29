//
//  SceneDelegate.swift
//  Subway Boom
//
//  Created by 장지수 on 2022/11/29.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder {
  var window: UIWindow?
}

extension SceneDelegate: UIWindowSceneDelegate {
  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = scene as? UIWindowScene else { return }
    
    let window = UIWindow(windowScene: windowScene)

    let rootView = LoginView().environment(\.window, window)
    
    window.rootViewController = UIHostingController(rootView: rootView)
    self.window = window
    window.makeKeyAndVisible()
  }
}
