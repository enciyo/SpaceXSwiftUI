//
//  LaunchesMapper.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 29.11.2020.
//

import Foundation


extension Launches{
    func mapTo() -> DashboardUIModel{
        return DashboardUIModel(
            id: self.id ?? "",
            image: self.links?.patch?.small,
            name: self.name,
            flightNum: String(self.flight_number ?? 0),
            isSuccess: String(self.success ?? false),
            date: convertDateFormat(inputDate: self.date_utc ?? "")
        )
    }
    
    
    func mapTo() -> DashboardDetailViewState{
        return DashboardDetailViewState(
            id: self.id ?? "",
            image: self.links?.patch?.small,
            name: self.name,
            flightNum: String(self.flight_number ?? 0),
            isSuccess: String(self.success ?? false),
            date: convertDateFormat(inputDate: self.date_utc ?? "")
        )
    }
}

extension Array where Element == Launches {
    func mapTo() -> [DashboardUIModel]{
        return self.map { item in
            item.mapTo()
        }
    }
    
    
    func mapTo() -> [DashboardDetailViewState]{
        return self.map { item in
            item.mapTo()
        }
    }
}
