//
//  ViewModelProvider.swift
//  MovieDB
//
//  Created by Mustafa Kilic on 22.11.2020.
//

import Foundation


let DashboardViewModelProvider : DashboardViewModel = DashboardViewModel(remote: RemoteDataSourceProvider)
let TutorialViewModelProvider : TutorialViewModel = TutorialViewModel(remote: RemoteDataSourceProvider)


