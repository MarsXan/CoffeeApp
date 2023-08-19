//
//  HomeViewModel.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import Foundation

class HomeViewModel:BaseViewModel<HomeEevent>{
    @Inject var apiService: HomeApiService
    @Published var categories = [Category]()
    @Published var products = [Product]()
    @Published var selectedCategory:Category?
    

    
    override func onEvent(_ event: HomeEevent) {
        switch event {
        case .getCategories:
            getCategories()
        case .getProducts(let catId):
            getProducts(catId: catId)
        case .selectCategory(let category):
            selectCategory(category)
        case .selectProduct(let product):
            selectProduct(product)
        
        }
    }
}

extension HomeViewModel {
    private func getCategories(){
        Task{
            await setState(.loading)
            do{
                self.categories = try await self.apiService.getCategories().async()
                if categories.count > 0 {
                    selectCategory(categories.first!)
                }
               
            }catch{
                await setState(.error(.init(code: 500,message: "error in get categories")))
            }
        }
    }
    
    private func getProducts(catId:String){
            Task{
                await setState(.loading)
                do{
                    self.products = try await self.apiService.getProducts(catId: catId).async()
                    await setState(.loaded)
                }catch{
                    await setState(.error(.init(code: 500,message: "error in get products")))
                }
            }
        
    }
    
    private func selectCategory(_ category:Category){
        selectedCategory = category
        getProducts(catId: category.id)
    }
    
    private func selectProduct(_ product:Product){
        print(product.name)
    }
    

    
}
