//
//  UserDataKeychain.swift
//  Subway Boom
//
//  Created by 장지수 on 2022/11/29.
//

import Foundation

struct UserDataKeychain: Keychain {
  // Make sure the account name doesn't match the bundle identifier!
  var account = "com.raywenderlich.SignInWithApple.Details"
  var service = "userIdentifier"

  typealias DataType = UserData
}
