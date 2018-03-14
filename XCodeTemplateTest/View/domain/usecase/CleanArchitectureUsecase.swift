import RxSwift

protocol ExampleAction {
}

class ExampleActionImpl: ExampleAction {
  let repository: CleanArchitectureRepository

  init(repository: CleanArchitectureRepository) {
     self.repository = repository
  }
}
