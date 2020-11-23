//
//  Navigator.swift
//  SpaceXSwiftUI
//
//  Created by Mustafa Kilic on 23.11.2020.
//

import Foundation
import Combine

class Navigator: ObservableObject {
  let objectWillChange = PassthroughSubject<Navigator,Never>()
    var currentPage: Pages = Pages.Tutorial {
        didSet {
            objectWillChange.send(self)
        }
    }
    
    func navigate(page : Pages){
        self.currentPage = page
        objectWillChange.send(self)
    }
    
}


