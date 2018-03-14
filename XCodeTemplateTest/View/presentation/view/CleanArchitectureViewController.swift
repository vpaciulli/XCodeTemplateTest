import UIKit

protocol CleanArchitectureView: class {
}

class CleanArchitectureViewController: UIViewController {
  var presenter: CleanArchitecturePresenter?

  // MARK: Object lifecycle

  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?){
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setup()
  }

  // MARK: Setup

  private func setup() {
    _ = CleanArchitectureRepositoryImpl(datasource: CleanArchitectureDatasourceImpl())
    let router = CleanArchitectureRouterImpl()
    presenter = CleanArchitecturePresenterImpl(view: self, router: router)
  }

  // MARK: View lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    presenter?.viewDidLoad()
  }
}

extension CleanArchitectureViewController: CleanArchitectureView {
}
