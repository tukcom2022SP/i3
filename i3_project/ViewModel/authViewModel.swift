
import UIKit
import Firebase

class AuthViewModel: NSObject, ObservableObject {
    @Published var didAuthenticateUser = false
     @Published var userSession: FirebaseAuth.User?
     private var tempCurrentUser: Firebase.User?

     static let shared = AuthViewModel()

     override init() {
         userSession = Auth.auth().currentUser
     }

     func login(withEmail email: String, password: String) {
         Auth.auth().signIn(withEmail: email, password: password) { result, error in
             if let error = error {
                 print("DEBUG: Failed to login with error \(error.localizedDescription)")
                 return
             }

             guard let user = result?.user else { return }
             self.tempCurrentUser = user
         }
     }

     func signOut() {
         self.userSession = nil
         try? Auth.auth().signOut()
     }
 }
