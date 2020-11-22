//
//  RemoteDataSource.swift
//  MovieDB
//
//  Created by Mustafa Kilic on 29.10.2020.
//

import Foundation
import RxSwift
import Moya

class RemoteDataSourceImp : RemoteDataSource {
    var networkProvider: MoyaProvider<NetworkService>
    init(networkProvider:MoyaProvider<NetworkService>) {
        self.networkProvider = networkProvider
    }
    
    
    func getLaunches() -> Single<[Launches]> {
        return networkProvider.rx.request(.fetchLaunches)
            .mapArray(Launches.self)
    }
    
    
}
