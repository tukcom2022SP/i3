import SwiftUI
//import FirebaseDatabase // 추가됨


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
      
     // let ref = FIRDatabase.database().reference()  //test
     // let itemsRef = ref.child("TEST")  // test
  //    itemsRef.setValue(["Name":"Tilltue"]) //test

    return true
  }
}

@main
struct i3_projectApp: App {
    var body: some Scene {
        WindowGroup {
           LoginView()
        }
    }
}

    
