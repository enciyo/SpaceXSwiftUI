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
        ZStack {
            Image("black")
                .resizable()
                .aspectRatio(UIImage(named: "black")!.size, contentMode: .fill)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            ZStack{
                VStack{
                    Text(viewModel.mTutorialViewState.summary ?? "")
                        .font(.body)
                        .bold()
                        .padding(.all,16)
                        .foregroundColor(.white)
                }
                .padding(24)
                .background(Color.init(Color.RGBColorSpace.sRGB, white: 0.3, opacity: 0.3))
                .cornerRadius(24)
            }
            .padding(16)
        }
        .onAppear(perform: {
            viewModel.fetchCompanyInfo()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                navigator.navigate(page: Pages.Main)
            }
        })
    }
}




