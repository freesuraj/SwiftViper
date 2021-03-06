//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___Route: NSObject {
    static func getScreen(context: AnyObject?) -> AnyObject? {
        let presenter: protocol<___FILEBASENAMEASIDENTIFIER___PresenterProtocol, ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol> = ___FILEBASENAMEASIDENTIFIER___Presenter()
        let interactor:___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol = ___FILEBASENAMEASIDENTIFIER___Interactor()
        let dataManager: ___FILEBASENAMEASIDENTIFIER___DataManagerProtocol = ___FILEBASENAMEASIDENTIFIER___DataManager()
        let apiManager: ___FILEBASENAMEASIDENTIFIER___ApiDataManagerProtocol = ___FILEBASENAMEASIDENTIFIER___ApiManager()
//        let router: RouterProtocol = Router()
        
        presenter.interactor = interactor
        interactor.dataManager = dataManager
        interactor.presenter = presenter
        dataManager.apiManager = apiManager
//        presenter.router = router
        
        return presenter
    }
}
