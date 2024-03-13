import SwiftUI
import FlourishSDK

class EventListenerWrapper: EventListener {
    func didReceiveEvent(data: Any) {
        print("Received on ExampleApp: \(data)")
    }
}

struct ContentView: View {
    @EnvironmentObject private var flourishSdkManager: FlourishSdkManager
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            TransfersView()
                .tabItem {
                    Image(systemName: "dollarsign.square.fill")
                    Text("Transfers")
                }
            PaymentServicesView()
                .tabItem {
                    Image(systemName: "creditcard.fill")
                    Text("Payment Services")
                }
            RewardsView()
                .tabItem {
                    Image(systemName: "flag.checkered.2.crossed")
                    Text("Rewards")
                }
        }.onAppear {
            let eventListenerWrapper = EventListenerWrapper()
            
            flourishSdkManager.initialize(completion: { _ in  }, eventListener: eventListenerWrapper)
        }
    }
}

#Preview {
    ContentView()
}
