//
//  SignInWithApple.swift
//  Subway Boom
//
//  Created by 장지수 on 2022/11/29.
//

import SwiftUI
import AuthenticationServices

struct SignInWithApple: UIViewRepresentable {
  func makeUIView(context: Context) -> ASAuthorizationAppleIDButton {
    return ASAuthorizationAppleIDButton()
  }
  
  func updateUIView(_ uiView: ASAuthorizationAppleIDButton, context: Context) {
  }
}
