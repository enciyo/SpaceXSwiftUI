//
//  TutorialViewModel.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 24.11.2020.
//

import Foundation
import RxSwift


class TutorialViewModel: ObservableObject {
    var remote: RemoteDataSource
    init(remote:RemoteDataSource) {
        self.remote = remote
    }
    
    @Published var mTutorialViewState = TutorialViewState()
    private let disposeBag = DisposeBag()
    
    func fetchCompanyInfo(){
        remote.getCompanyInfo()
            .subscribe { result in
                self.mTutorialViewState = self.mapTop(company: result)
            } onError: { error in
                
            }
            .disposed(by: disposeBag)
        
    }
    
    private func mapTop(company:Company) -> TutorialViewState{
        let headquarters = company.headquarters!
        let address = headquarters.address! + " " + headquarters.city! + " " + headquarters.state!
        return TutorialViewState(companyAddress: address,
                                 companyName: company.name,
                                 founder: company.founder,
                                 summary: company.summary)
    }
    
    
    
}


