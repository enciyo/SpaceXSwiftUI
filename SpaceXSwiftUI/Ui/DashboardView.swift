//
//  ContentView.swift
//  MovieDB
//
//  Created by Mustafa Kilic on 28.10.2020.
//

import SwiftUI
import Foundation
import Combine


struct DashboardView: View {
    
    @ObservedObject var viewModel : DashboardViewModel
    
    var body: some View {
        List(viewModel.dashboardViewState.launches){model in
            HStack{
                RemoteImage(url: model.image ?? "wr").frame(width: 64, height: 64)
                VStack{
                    Text(model.title ?? "")
                        .frame(width: 200, alignment: .topLeading)
                        .font(.title)
                        .foregroundColor(.black)
                    Spacer().frame(height: 12)
                    Text(model.description ?? "")
                        .frame(width: 200,alignment: .topLeading)
                        .font(.custom("21", size: 12))
                        .foregroundColor(.gray)
                }
            }
            .frame(height: 160)
            .padding(12)
        
        }
        .onAppear(perform: {
            viewModel.postValue()
        })
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(viewModel: DashboardViewModelProvider)
    }
}

