//
//  MainView.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 23.11.2020.
//

import Foundation
import SwiftUI

struct MainView : View {
    
    @EnvironmentObject var navigator: Navigator
    
    var body: some View{
        VStack {
            switch navigator.currentPage{
            case Pages.Main:
                TabView{
                    DashboardView(viewModel: DashboardViewModelProvider)
                        .tabItem { Text("Dashboard") }
                    Text("Bravo")
                        .tabItem { Text("Second Tab") }
                }.transition(.opacity)
            case Pages.Tutorial:
                TutorialView(viewModel: TutorialViewModelProvider)
            }
        }
    }
}

