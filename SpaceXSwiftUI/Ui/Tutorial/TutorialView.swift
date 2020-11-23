//
//  SplashView.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 23.11.2020.
//

import Foundation
import SwiftUI
import Combine


struct TutorialView : View {
    
    @EnvironmentObject var navigator: Navigator
    @ObservedObject var viewModel: TutorialViewModel
    
    var body: some View{
        VStack {
            Text(viewModel.mTutorialViewState.companyName ?? "")
                .font(.title)
            Spacer().frame(height:12)
            Text(viewModel.mTutorialViewState.companyAddress ?? "")
                .font(.subheadline)
            Spacer().frame(height:12)
            Text(viewModel.mTutorialViewState.founder ?? "")
                .font(.subheadline)
            Spacer().frame(height:12)
            Text(viewModel.mTutorialViewState.summary ?? "")
                .font(.body)
                .frame(width: 320,alignment:.center)
            
        }
        .onAppear(perform: {
            viewModel.fetchCompanyInfo()
             DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                 navigator.navigate(page: Pages.Main)
            }
        })
    }
}




