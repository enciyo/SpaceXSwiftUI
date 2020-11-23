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
        NavigationView{
            List(viewModel.dashboardViewState.launches){ model in
                NavigationLink(
                    destination: Text("Destination"),
                    label: {
                        HStack{
                            RemoteImage(url: model.image ?? "wr")
                                .frame(width: 64, height: 64,alignment: .center)
                            Spacer().frame(width: 32)
                            VStack{
                                Text("Launches: " + (model.name ?? ""))
                                    .frame(width: 200, alignment: .topLeading)
                                    .font(.title)
                                    .foregroundColor(.black)
                                Spacer().frame(height: 12)
                                Text("Rocket Id: " + (model.rocketId ?? ""))
                                    .frame(width: 200,alignment: .topLeading)
                                    .font(.custom("21", size: 12))
                                    .foregroundColor(.gray)
                                Spacer().frame(height: 12)
                                Text("Date: "+(model.dateLocal ?? ""))
                                    .frame(width: 200,alignment: .topLeading)
                                    .font(.custom("21", size: 12))
                                    .foregroundColor(.gray)
                            }
                        }
                        
                    }
                )
                .navigationTitle("Dashboard")
                .frame(height: 160)
                .padding(12)
            }
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

