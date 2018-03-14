import RxSwift

protocol CleanArchitecturePresenter {
  func viewDidLoad()
}

class CleanArchitecturePresenterImpl: CleanArchitecturePresenter {
  let view: CleanArchitectureView
  let router: CleanArchitectureRouter
  
  init(view: CleanArchitectureView, router: CleanArchitectureRouter) {
    self.view = view
    self.router = router
  }
  
  func viewDidLoad() {
  }
}
