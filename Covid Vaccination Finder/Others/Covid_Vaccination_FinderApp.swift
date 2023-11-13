

import FirebaseCore
import SwiftUI

@main
struct Covid_Vaccination_FinderApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
