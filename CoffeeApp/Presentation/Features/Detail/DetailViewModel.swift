//
//  DetailViewModel.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/20/23.
//

import Foundation

class DetailViewModel: BaseViewModel<DetailEvent> {
    @Inject var service: DetailApiService
    @Published var product: Product?
    @Published var selectedCupSize: SizeType = .small
    @Published var count: Int = 1

    override func onEvent(_ event: DetailEvent) {
        switch(event) {

        case .getProductDetail(let catName, let productName):
            Task {
                try await getProductDetail(catName: catName, productName: productName)
            }
        case .addToFavorite(let catName, let productName):
            Task {
                try await addToFavorite(catName: catName, productName: productName)
            }
        case .disLikeProduct(let catName, let productName):
            Task {
                try await disLikeProduct(catName: catName, productName: productName)
            }
            
        case .increaseCountByOne:
            Task {
                await increaseCountByOne()
            }
        case .decreaseCountByOne:
            Task {
                await decreaseCountByOne()
            }
        case .changeCupSize(let size):
            Task {
                await changeCupSize(size)
            }
                
        
        }
    }

}

extension DetailViewModel {
    @MainActor  private func getProductDetail(catName: String, productName: String) async throws {
        setState(.loading)
        do {
            self.product = try await self.service.getProductDetail(catName: catName, productName: productName).async()
            setState(.loaded)
        } catch {
            setState(.error(.init(code: 500, message: "error in get product")))
        }
    }
    
    @MainActor   private func addToFavorite(catName: String, productName: String) async throws {
        do {
            _ = try await self.service.likeProduct(catName: catName, productName: productName).async()
        } catch {
            setState(.error(.init(code: 500, message: "error in like product")))
        }
    }
    
    @MainActor   private func disLikeProduct(catName: String, productName: String) async throws {
        do {
            _ = try await self.service.disLikeProduct(catName: catName, productName: productName).async()
        } catch {
            setState(.error(.init(code: 500, message: "error in dislike product")))
        }
    }
    
    
    
    @MainActor  private func increaseCountByOne() {
        count += 1
        
    }
    
    @MainActor  private func decreaseCountByOne() {
        if count > 1 {
            count -= 1
        }
    }
    
    @MainActor  private func changeCupSize(_ size: SizeType) {
        selectedCupSize = size
    }
    
    
    
}

