//
//  LoginView.swift
//  Subway Boom
//
//  Created by 장지수 on 2022/11/14.
//

import SwiftUI
import AuthenticationServices

struct LoginView: View {
    @Environment(\.window) var window: UIWindow?
    @State var appleSignInDelegates: SignInWithAppleDelegates! = nil
    var body: some View {
            VStack{
                HStack {
                    Spacer()
                    Image("subway")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width * 0.15,
                               height: UIScreen.main.bounds.height * 0.1)
                    
                    Text("서울시 지하철 혼잡도")
                        .font(.system(size: 25))
                    Spacer()
                }
                UserAndPassword()
                
                SignInWithApple()
                    .frame(width: 280,height: 60,alignment: .center)
                    .onTapGesture(perform: showAppleLogin)
            }
        }
        private func showAppleLogin() {
            let request = ASAuthorizationAppleIDProvider().createRequest()
            request.requestedScopes = [.fullName, .email]
            
            performSignIn(using: [request])
            
            LineView()
    }
    private func performExistingAccountSetupFlows() {
      #if !targetEnvironment(simulator)
      // Note that this won't do anything in the simulator.  You need to
      // be on a real device or you'll just get a failure from the call.
      let requests = [
        ASAuthorizationAppleIDProvider().createRequest(),
        ASAuthorizationPasswordProvider().createRequest()
      ]

      performSignIn(using: requests)
      #endif
    }
    private func performSignIn(using requests: [ASAuthorizationRequest]) {
        appleSignInDelegates = SignInWithAppleDelegates(window: window) { success in
          if success {
            // update UI
          } else {
            // show the user an error
          }
        }

        let controller = ASAuthorizationController(authorizationRequests: requests)
        controller.delegate = appleSignInDelegates
        controller.presentationContextProvider = appleSignInDelegates

        controller.performRequests()
      }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}



