//
//  ProductsPresenter.swift
//  viper-example
//
//  Created by Revan Sadigli on 27.10.2023.
//

import Foundation

class ProductsPresenter : ProductsPresenterProtocol {
    
    weak var view: ProductsViewControllerProtocol?
    var router: ProductsRouterProtocol?
    var interactor: ProductsInteractorProtocol?
    
    func onFetchProductsSucces(response: ProductsDTO) {
        view?.fetchedProductsSuccesfully(response: response)
    }
    
    func onFetchProductsFailed() {
        view?.fetchedProductsFailed()
    }
    
    func routeToProductDetail() {
        router?.routeToProductDetail()
    }
    
    func fetchProducts() {
        interactor?.didFetchProducts()
    }
    
}
