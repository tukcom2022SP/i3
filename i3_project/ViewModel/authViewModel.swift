import UIKit
import Firebase
import FirebaseAuth

class AuthViewModel: ObservableObject {
    
    @Published var currentUser: Firebase.User?
      
      init() {
          currentUser = Auth.auth().currentUser
      }
      
      func login(email: String, password: String) {
          Auth.auth().signIn(withEmail: email, password: password) { result, error in
              if let error = error {
                  print("Error : \(error.localizedDescription)")
                  return
              }
              
              self.currentUser = result?.user
          }
      }
      
      func logout() {
          currentUser = nil
          try? Auth.auth().signOut()
      }
      
      func registerUser(email: String, password: String) {
          
                  Auth.auth().createUser(withEmail: email, password: password) { result, error in
                      if let error = error {
                          print("Error : \(error.localizedDescription)")
                          return
                      }
                      
                      guard let user = result?.user else { return }
                      
                      print(user.uid)
            }
          
      }
}
