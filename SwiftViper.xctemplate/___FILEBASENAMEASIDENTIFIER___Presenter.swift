//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___Presenter: UIViewController, ___FILEBASENAMEASIDENTIFIER___PresenterProtocol, ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol {

    var interactor: ___FILEBASENAMEASIDENTIFIER___InteractorInputProtocol?
    // var router: RouterProtocol?

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: "___FILEBASENAMEASIDENTIFIER___Presenter", bundle: nil)
        view.backgroundColor = UIColor.whiteColor()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: ___FILEBASENAMEASIDENTIFIER___InteractorOutputProtocol
    func outputToPresenter(object: AnyObject) {

    }

}
