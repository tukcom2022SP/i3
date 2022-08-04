import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct i3_projectApp: App {
    init() {
          FirebaseApp.configure() // 코드 추가
      }
    var body: some Scene {
        WindowGroup {
            LineView()
        }
    }
}

    
