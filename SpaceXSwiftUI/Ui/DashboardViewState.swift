//
//  LoginViewState.swift
//  MovieDB
//
//  Created by Mustafa Kilic on 22.11.2020.
//

import Foundation


struct DashboardViewState{
    var launches: [LaunchUIModel] = []
    var isLoading: Bool = false
    var error:String? = nil
}

struct LaunchUIModel: Identifiable{
    var id: String
    var image:String? = nil
    var title:String? = nil
    var description:String? = nil
}
