//
//  CustomProgressView.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 29.11.2020.
//

import Foundation
import SwiftUI


struct CustomProgressView : View {
    var body: some View {
        ProgressView()
            .scaleEffect(2, anchor: .center)
            .progressViewStyle(DarkBlueShadowProgressViewStyle())
            .shadow(color: .black, radius: 4.0, x: 1.0, y: 2.0)
    }
}



struct DarkBlueShadowProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .shadow(color: Color(red: 0, green: 0, blue: 0.6), radius: 4.0, x: 1.0, y: 2.0)
    }
}

extension View {
    @ViewBuilder func hidden(_ shouldVisible: Bool) -> some View {
        switch shouldVisible {
        case false: self.hidden()
        case true: self
        }
    }
}
