//
//  DashboardDetailView.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 29.11.2020.
//

import Foundation
import SwiftUI



//TODO
struct DashboardDetailView : View {
    var model: DashboardUIModel
    
    var body: some View{
        ScrollView{
            VStack{
                HeaderView(model: model)
                Spacer().frame(height: .infinity)
            }
        }
        .ignoresSafeArea()
        .frame(height:.infinity)
        
    }
}


struct HeaderView : View {
    var model: DashboardUIModel
    var body: some View{
        ZStack{
            Color.black.ignoresSafeArea(.all)
            VStack{
                Spacer().frame(height: 92)
                RemoteImage(url: model.image ?? "")
                    .aspectRatio(contentMode: ContentMode.fit)
                    .frame(width: 128, height: 128, alignment: .center)
                Spacer().frame(height: 24)
                HeaderContentView(model: model).padding(12)
                Spacer().frame(height: 24)
                HeaderStatesView(model: model)
                Spacer().frame(height: 24)
            }
            .fixedSize()
        }
        .cornerRadius(24)
    }
}


struct HeaderContentView : View {
    var model: DashboardUIModel
    var body: some View{
        ZStack{
            Color.init(Color.RGBColorSpace.sRGB, white: 0.3, opacity: 0.3)
            VStack{
                Text((model.name ?? ""))
                    .frame(width: 200, alignment: .center)
                    .font(.custom("21", size: 20))
                    .foregroundColor(.white)
                Spacer().frame(height: 6)
                Text("Flight number: " + (model.flightNum ?? ""))
                    .frame(width: 200,alignment: .center)
                    .font(.custom("21", size: 16))
                    .foregroundColor(.white)
                Text((model.date ?? ""))
                    .frame(width: 200,alignment: .center)
                    .font(.custom("21", size: 16))
                    .foregroundColor(.white)
                
            }
            .padding()
        }
        .cornerRadius(12)
    }
}

struct HeaderStatesView : View {
    var model: DashboardUIModel
    var body: some View{
        HStack{
            RemoteImage(url: model.image ?? "")
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 24, height: 24, alignment: .center)
            RemoteImage(url: model.image ?? "")
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 24, height: 24, alignment: .center)
            RemoteImage(url: model.image ?? "")
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 24, height: 24, alignment: .center)
            RemoteImage(url: model.image ?? "")
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width: 24, height: 24, alignment: .center)
        }
    }
}

