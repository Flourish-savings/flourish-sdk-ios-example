import SwiftUI
import FlourishSDK

@main
struct SdkExampleApp: App {
    @StateObject private var flourishSdkManager = FlourishSdkManager(
        customerCode: "578956",
        partnerUuid: "2476f19f-bf9c-4b52-9c51-a5cbf56fc89e",
        partnerSecret: "4dc94959-1f7b-434b-bc98-c9cd3c9e3807",
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
