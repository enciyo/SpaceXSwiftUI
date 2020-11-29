//
//  DashboardViewModel.swift
//  SpaceX
//
//  Created by Mustafa Kilic on 29.10.2020.
//

import Foundation
import RxSwift
import Moya

class DashboardViewModel : ObservableObject {
    private let mFetchLaunchesUseCase: FetchLaunchesUseCase
    init(fetchUsecase:FetchLaunchesUseCase) {
        self.mFetchLaunchesUseCase = fetchUsecase
    }

    @Published var dashboardViewState : DashboardViewState = DashboardViewState()
    private let disposeBag = DisposeBag()
    

    func postValue(){
        mFetchLaunchesUseCase
            .invoke()
            .do(onNext:{next in
                switch next{
                case .success(let value):
                    self.dashboardViewState.launches = value
                    self.dashboardViewState.isLoading = false
                case .loading:
                    self.dashboardViewState.isLoading =  self.dashboardViewState.launches.isEmpty // Multiple call onAppear from view
                case .failure(let error):
                    self.dashboardViewState.error = error
                    self.dashboardViewState.isLoading = false
                }
            })
            .subscribe()
            .disposed(by: disposeBag)
    }
    

}
