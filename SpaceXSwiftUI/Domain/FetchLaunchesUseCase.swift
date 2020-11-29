//
//  FetchLaunchesUseCase.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 29.11.2020.
//

import Foundation
import RxSwift

class FetchLaunchesUseCase: UseCase {
    var remote: RemoteDataSource!
    init(remote:RemoteDataSource) {
        self.remote = remote
    }
    
    func invoke() -> Observable<Resource<[DashboardUIModel]>> {
        return Observable.create { emitter -> Disposable in
            emitter.onNext(Resource.loading)
            return self.remote
                .getLaunches()
                .subscribe(onSuccess: {succes in
                    emitter.onNext(Resource.success(succes.mapTo()))
                    emitter.onCompleted()
                }, onError: {e in
                    emitter.onNext(Resource.failure(e.localizedDescription))
                    emitter.onCompleted()
                })
        }
    }
    typealias R = [DashboardUIModel]
}
