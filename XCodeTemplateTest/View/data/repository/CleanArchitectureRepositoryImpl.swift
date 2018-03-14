import RxSwift

class CleanArchitectureRepositoryImpl: CleanArchitectureRepository {
  let datasource: CleanArchitectureDatasource

  init(datasource: CleanArchitectureDatasource) {
     self.datasource = datasource
  }
}
