//
//  AppCoordinator.swift
//  CoordinatorStructure
//
//  Created by Ivan Martin on 01/12/2022.
//

import Foundation
import UIKit

class AppCoordinator: BaseCoordinator {
    let window: UIWindow
    var navigationController: UINavigationController?
    var coordinatorFactory: CoordinatorFactory?
    
    init(window: UIWindow){
        self.window = window
        self.coordinatorFactory = CoordinatorFactoryImpl()
    }
    
    func start() {
        self.navigationController = UINavigationController()
        self.coordinatorFactory = CoordinatorFactoryImpl()
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        runAlphaCoordinator()
    }
    
    private func runAlphaCoordinator(){
        guard let child = coordinatorFactory?.makeAlphaCoordinator(navigationController: navigationController) else { return }
        child.onFinish = { [weak self] in
            
        }
    }
    
    private func runBetaCoordinator(){
        guard let child = coordinatorFactory?.makeBetaCoordinator(navigationController: navigationController) else { return }
        child.onFinish = { [weak self] in
            
        }
    }
}
