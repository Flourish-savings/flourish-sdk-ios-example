import SwiftUI
import FlourishSDK

class FlourishEventDelegate: FlourishEvent {
    func onGenericEvent(event: Data) {
        print("Received GenericEvent on ExampleApp: \(event)")
    }
}

struct ContentView: View {
    var flourishSdkManager: FlourishSdkManager
    
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
            RewardsView(flourishSdkManager: flourishSdkManager)
                .tabItem {
                    Image(systemName: "flag.checkered.2.crossed")
                    Text("Rewards")
                }
        }.onAppear {
            let flourishEventDelegate = FlourishEventDelegate()
            flourishSdkManager.initialize(completion: { _ in  }, eventDelegate: flourishEventDelegate)
        }
    }
}

#Preview {
   ContentView()
}
