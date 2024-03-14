import SwiftUI
import FlourishSDK

class FlourishEventDelegate: FlourishEvent {
    func onGiftCardCopyEvent(giftCardCopyEvent: FlourishSDK.GiftCardCopyEvent) {
        print("Received TriviaGameFinishedEvent on ExampleApp: \(giftCardCopyEvent)")
    }
    
    func onHomeBannerActionEvent(homeBannerActionEvent: FlourishSDK.HomeBannerActionEvent) {
        print("Received TriviaGameFinishedEvent on ExampleApp: \(homeBannerActionEvent)")
    }
    
    func onMissionActionEvent(missionActionEvent: FlourishSDK.MissionActionEvent) {
        print("Received TriviaGameFinishedEvent on ExampleApp: \(missionActionEvent)")
    }
    
    func onReferralCopyEvent(referralCopyEvent: FlourishSDK.ReferralCopyEvent) {
        print("Received TriviaGameFinishedEvent on ExampleApp: \(referralCopyEvent)")
    }
    
    func onTriviaCloseEvent(triviaCloseEvent: FlourishSDK.TriviaCloseEvent) {
        print("Received TriviaGameFinishedEvent on ExampleApp: \(triviaCloseEvent)")
    }
    
    func onTriviaGameFinishedEvent(triviaFinishEvent: FlourishSDK.TriviaFinishEvent) {
        print("Received TriviaGameFinishedEvent on ExampleApp: \(triviaFinishEvent)")
    }
    
    func onBackButtonPressedEvent(backButtonPressedEvent: FlourishSDK.BackButtonPressedEvent) {
        print("Received onBackButtonPressedEvent on ExampleApp: \(backButtonPressedEvent)")
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
            let flourishEventDelegate = FlourishEventDelegate()
            flourishSdkManager.initialize(completion: { _ in  }, eventDelegate: flourishEventDelegate)
        }
    }
}

#Preview {
    ContentView()
}
