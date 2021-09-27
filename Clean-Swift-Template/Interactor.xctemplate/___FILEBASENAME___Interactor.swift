//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

// MARK: Boundary protocols
protocol ___VARIABLE_sceneName:identifier___Interacting {
    func viewLoaded(_ request: ___VARIABLE_sceneName:identifier___.Request)
}

protocol ___VARIABLE_sceneName:identifier___DataStore {
    var dependencies: ___VARIABLE_sceneName:identifier___.Dependencies { get set }
}

// MARK: Class
/**
    Class to <#business#>.
 */
class ___VARIABLE_sceneName:identifier___Interactor: ___VARIABLE_sceneName:identifier___DataStore {

    private let presenter: ___VARIABLE_sceneName:identifier___Presenting
    private var dependencies: ___VARIABLE_sceneName:identifier___.Dependencies
    var worker: ___VARIABLE_sceneName:identifier___Workable?
    
    init(dependencies: ___VARIABLE_sceneName:identifier___.Dependencies,
         presenter: ___VARIABLE_sceneName:identifier___Presenting,
         worker: ___VARIABLE_sceneName:identifier___Worker? = nil) {
        self.presenter = presenter
        self.dependencies = dependencies
        self.worker = worker
    }
}

extension ___VARIABLE_sceneName:identifier___Interactor: ___VARIABLE_sceneName:identifier___Interacting {
    
    // MARK: Business logic
    func viewLoaded(_ request: ___VARIABLE_sceneName:identifier___.Request) {
        // NOTE: Create some Entity to do the work
        //let entity = ___VARIABLE_sceneName:identifier___Worker()
        //entity.doSomeWork()
        
        // NOTE: Pass the result to the Presenter
        let response = ___VARIABLE_sceneName:identifier___.Response()
        presenter.present(response)
    }
}
