//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

// MARK: Boundary protocol
protocol ___VARIABLE_sceneName:identifier___Presenting {
    func present(_ response: ___VARIABLE_sceneName:identifier___.Response)
}

// MARK: Class
/**
    Class to format the data response from the Interactor and pass the result view model to the View Controller
 */
class ___VARIABLE_sceneName:identifier___Presenter {
    
    weak var view: ___VARIABLE_sceneName:identifier___Viewable?
    
    init (with view: ___VARIABLE_sceneName:identifier___Viewable?) {
        self.view = view
    }

}

extension ___VARIABLE_sceneName:identifier___Presenter: ___VARIABLE_sceneName:identifier___Presenting  {
    
    // MARK: Presentation logic
    func present(_ response: ___VARIABLE_sceneName:identifier___.Response) {
        let viewModel = ___VARIABLE_sceneName:identifier___.ViewModel()
        view?.present(viewModel)
    }
}
