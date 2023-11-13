

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            AppointmentsView()
        } else {
            UserLoginView()
        }
        
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView {
            AppointmentsView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.circle" )
                }
        }
    }
}

#Preview {
    MainView()
}

