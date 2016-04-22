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
  ViewModel // Responsible for everything associated with a view, including implementing any datasources, delegates etc.
  ViewModelDataSource // Generates and updates view model
Route.swift
```
