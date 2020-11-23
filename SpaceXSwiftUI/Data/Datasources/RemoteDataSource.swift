//
//  RemoteDataSource.swift
//  MovieDB
//
//  Created by Mustafa Kilic on 22.11.2020.
//

import Foundation
import RxSwift
protocol RemoteDataSource{
    func getLaunches()-> Single<[Launches]>
    func getCompanyInfo() -> Single<Company>
}

