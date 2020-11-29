//
//  DashboardView.swift
//  SpaceX
//
//  Created by Mustafa Kilic on 28.10.2020.
//

import SwiftUI
import Foundation


struct DashboardView: View {
    
    @ObservedObject var viewModel : DashboardViewModel
    @EnvironmentObject var navigator: Navigator
    
    var body: some View {
        ZStack{
            DashboardListView(model: viewModel.dashboardViewState.launches) // #include NavigationView
            CustomProgressView().hidden(viewModel.dashboardViewState.isLoading)
        }
        .accentColor( .white)
        .onAppear(perform: {
            viewModel.postValue()
        })
    }
}


struct DashboardListView  : View{
    let model: [DashboardUIModel]
    var body: some View{
        NavigationView{
            List(model){ model in
                NavigationLink(
                    destination: DashboardDetailView(model: model),
                    label: {
                        DashboardViewItem(model: model)
                    }
                )
                .frame(height: 160)
                .padding(12)
            }
            .navigationTitle("Dashboard")
        }
        
    }
}


struct DashboardViewItem : View {
    let model: DashboardUIModel
    var body: some View{
        HStack{
            RemoteImage(url: model.image ?? "wr")
                .frame(width: 128, height: 128,alignment: .center)
            Spacer().frame(width: 32)
            VStack{
                Spacer().frame(height: 24)
                Text((model.name ?? ""))
                    .frame(width: 200, alignment: .topLeading)
                    .font(.custom("21", size: 20))
                    .foregroundColor(.black)
                Spacer().frame(height: 6)
                Text("Flight number: " + (model.flightNum ?? ""))
                    .frame(width: 200,alignment: .topLeading)
                    .font(.custom("21", size: 16))
                    .foregroundColor(.gray)
                Text("Succes: "+(model.isSuccess ?? ""))
                    .frame(width: 200,alignment: .topLeading)
                    .font(.custom("21", size: 16))
                    .foregroundColor(.gray)
                Text((model.date ?? ""))
                    .frame(width: 200,alignment: .topLeading)
                    .font(.custom("21", size: 16))
                    .foregroundColor(.gray)
                Spacer().frame(height: 24)
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView(viewModel: DashboardViewModelProvider)
    }
}


