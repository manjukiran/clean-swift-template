//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

public enum ___VARIABLE_sceneName:identifier___ {
    
    struct Dependencies {
        
    }
    
    static func createScreen(dependencies: Dependencies, coordinator: ___VARIABLE_sceneName:identifier___Coordinating) -> ___VARIABLE_sceneName:identifier___ViewController? {
        guard let viewController = ___VARIABLE_sceneName:identifier___ViewController.from(storyboard: "___VARIABLE_sceneName:identifier___") else { return nil
        }
        let presenter = ___VARIABLE_sceneName:identifier___Presenter(with: viewController)
        let interactor = ___VARIABLE_sceneName:identifier___Interactor(dependencies: dependencies, presenter: presenter)
        viewController.coordinator = coordinator
        viewController.interactor = interactor
        
        return viewController
    }
    
    struct Request {
        
    }
    
    struct Response {
        
    }
    
    struct ViewModel {
        
    }
}
