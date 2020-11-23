//
//  NetworkService.swift
//  MovieDB
//
//  Created by Mustafa Kilic on 22.11.2020.
//

import Foundation
import Moya


enum NetworkService{
    case fetchLaunches
    case fetchCompanyInfo
}

extension NetworkService: TargetType {
    var baseURL: URL {
        URL(string:"https://api.spacexdata.com/v4")!
    }
    
    var path: String {
        switch self {
        case .fetchLaunches:
            return "/launches"
        case .fetchCompanyInfo:
            return "/company"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    var task: Task {
        switch self {
        
        default:
            return .requestPlain
        }
    }
    
    var headers: [String : String]? {
        return nil
    }
    
}
