//
//  Result.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 29.11.2020.
//

import Foundation

public enum Resource<Value> {
    case success(_ value: Value)
    case loading
    case failure(_ error :String)
}
