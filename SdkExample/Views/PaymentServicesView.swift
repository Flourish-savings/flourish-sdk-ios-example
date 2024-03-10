//
//  PaymentServicesView.swift
//  SdkExample
//
//  Created by Yuri Logatto Pamplona on 08/03/24.
//

import SwiftUI

struct PaymentServicesView: View {
    var body: some View {
        ZStack {
            Color.yellow
            
            Image(systemName: "creditcard.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100.0))
            
        }
    }
}

#Preview {
    PaymentServicesView()
}
