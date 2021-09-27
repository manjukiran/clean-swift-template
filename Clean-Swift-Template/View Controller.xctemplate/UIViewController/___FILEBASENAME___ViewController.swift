//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName:identifier___Viewable: class {
    func present(_ viewModel: ___VARIABLE_sceneName:identifier___.ViewModel)
}

class ___VARIABLE_sceneName:identifier___ViewController: UIViewController  {
    var interactor: ___VARIABLE_sceneName:identifier___Interacting?
    weak var coordinator: ___VARIABLE_sceneName:identifier___Coordinating?

    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        viewLoaded()
    }
    
    private func setupUI(){
        // Do any further setup here
    }
    
    // MARK: Event handling
    func viewLoaded() {
        // NOTE: Ask the Interactor to do some work
        let request = ___VARIABLE_sceneName:identifier___.Request()
        interactor?.viewLoaded(request)
    }
    
}

extension ___VARIABLE_sceneName:identifier___ViewController: ___VARIABLE_sceneName:identifier___Viewable {
    
    // MARK: Display logic
    func present(_ viewModel: ___VARIABLE_sceneName:identifier___.ViewModel) {
        // NOTE: Display the result from the Presenter
        // nameTextField.text = viewModel.name
    }
}
