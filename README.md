### Modified VIPER Architecture

[VIPER][ref1] is an application of Clean Architecture to iOS apps. The word VIPER is a backronym for View, Interactor, Presenter, Entity, and Routing. Clean Architecture divides an app’s logical structure into distinct layers of responsibility. This makes it easier to isolate dependencies (e.g. your database) and to test the interactions at the boundaries between layers. You can read more about it in the link above.

[ref1]: https://www.objc.io/issues/13-architecture/viper/


This version is a slightly modified and more simplified version of VIPER architecture.
The files generated are as follows

```
// Defines all protocols used for a module which include
Protocols.swift
    ApiDataManagerProtocol
    DataManagerProtocol
    InteractorOutputProtocol
    InteractorInputProtocol
    PresenterProtocol

ApiManager.swift
DataManager.swift
Presenter.swift
Presenter.xib
Interactor.swift
ViewModel.swift
  ViewManager // Responsible for everything associated with a view, including implementing any datasources, delegates etc.
  ViewManagerDataSource // Generates and updates view model
Route.swift
```

### Install
* If you are using [Alcatraz][href2], you should be able to download it from there. Search for **SwiftViper** Under **Templates**
[href2]: https://github.com/supermarin/Alcatraz
* Using command line
  ```
  $ git clone https://github.com/freesuraj/SwiftViper
  $ cd SwiftViper
  $ sh .install-templates.sh
  ```

### Usage
#### Using XCode
After you've installed the template in Xcode, restart the Xcode. In your Xcode project, when you create a new file, you can select **SwiftViper**.
#### Using node.js

```
$ cd SwiftViper/NodeJs
$ node app.js -d DIRECTORY/TO/SAVE -c MODULENAME
```
