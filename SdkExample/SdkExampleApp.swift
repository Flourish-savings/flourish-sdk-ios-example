import SwiftUI
import FlourishSDK

@main
struct SdkExampleApp: App {
    @StateObject private var flourishSdkManager = FlourishSdkManager(
        customerCode: "HERE_YOU_WILL_USE_YOUR_CUSTOMER_CODE",
        partnerUuid: "HERE_YOU_WILL_USE_YOUR_PARTNER_ID",
        partnerSecret: "HERE_YOU_WILL_USE_YOUR_SECRET",
        environment: Environment.staging,
        language: Language.en
    )
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(flourishSdkManager)
        }
    }
}
