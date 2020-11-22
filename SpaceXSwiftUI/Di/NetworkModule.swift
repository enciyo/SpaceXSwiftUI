//
//  NetworkModule.swift
//  MovieDB
//
//  Created by Mustafa Kilic on 22.11.2020.
//

import Foundation
import Moya

let NetworkProvider : MoyaProvider<NetworkService> = MoyaProvider<NetworkService>()
let RemoteDataSourceProvider : RemoteDataSource = RemoteDataSourceImp(networkProvider: NetworkProvider) as RemoteDataSource
