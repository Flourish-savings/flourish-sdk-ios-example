//
//  ContentView.swift
//  SdkExample
//
//  Created by Yuri Logatto Pamplona on 10/03/24.
//

import SwiftUI
import FlourishSDK

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
            flourishSdkManager.initialize { _ in }
        }
    }
}

#Preview {
    ContentView()
}
