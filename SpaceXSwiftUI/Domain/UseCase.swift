//
//  UseCase.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 29.11.2020.
//

import Foundation
import RxSwift

public protocol UseCase {
    associatedtype R
    func invoke() -> Observable<Resource<R>>
}
