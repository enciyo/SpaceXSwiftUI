//
//  ViewModelProvider.swift
//  MovieDB
//
//  Created by Mustafa Kilic on 22.11.2020.
//

import Foundation


let DashboardViewModelProvider : DashboardViewModel = DashboardViewModel(fetchUsecase: FetchLaunchesUseCaseProvider)
let TutorialViewModelProvider : TutorialViewModel = TutorialViewModel(remote: RemoteDataSourceProvider)


