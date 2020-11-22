//
//  LoginViewModel.swift
//  MovieDB
//
//  Created by Mustafa Kilic on 29.10.2020.
//

import Foundation
import RxSwift
import Moya

class DashboardViewModel : ObservableObject {
    private var remote: RemoteDataSource?
    init(remote:RemoteDataSource) {
        self.remote = remote
    }

    private let disposeBag = DisposeBag()
    @Published var dashboardViewState : DashboardViewState = DashboardViewState()

    func postValue(){
        self.remote!
            .getLaunches()
            .subscribe(onSuccess : { (result : [Launches]) in
                self.dashboardViewState.launches = result.map({ t in self.mapTo(data: t)})
            },onError: {t in
                self.dashboardViewState.error = t.localizedDescription
            })
            .disposed(by: disposeBag)
    }
    
    func mapTo(data: Launches) -> LaunchUIModel{
        return LaunchUIModel(
            id: data.id ?? "",
            image: data.links?.patch?.small,
            title: data.name,
            description : data.details?.description
        )
    }

}
