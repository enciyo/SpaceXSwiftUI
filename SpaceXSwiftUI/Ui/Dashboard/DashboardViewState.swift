//
//  DashboardViewState.swift
//  SpaceX
//
//  Created by Mustafa Kilic on 22.11.2020.
//

import Foundation


struct DashboardViewState{
    var launches: [DashboardUIModel] = []
    var isLoading: Bool = false
    var error:String? = nil
}

struct DashboardUIModel: Identifiable{
    var id: String
    var image:String? = nil
    var name:String? = nil
    var flightNum: String? = nil
    var isSuccess: String? = nil
    var date : String? = nil
}
