//
//  HomeView.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/14/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = HomeViewModel()
    @EnvironmentObject var router: MainRouter
    @State private var selectedMenu = CategoryType.hotCoffees
    @State private var showDetail = false
    @State private var selectedItem: Product?
    @Namespace var animation
    private var gridItemLayout = [GridItem(.fixed((UIScreen.main.bounds.width - 110) / 2), spacing: 16), GridItem(.fixed((UIScreen.main.bounds.width - 110) / 2), spacing: 16)]
    var body: some View {
        ZStack(alignment: .topLeading){
            Color.coffeeLight
                .ignoresSafeArea()
            VStack(spacing:16){
                VStack(alignment:.leading){
                    Text("Welcome,")
                        .font(.cBody)
                        .foregroundColor(.coffeeRed)
                    Text("Mohsen Mokhtari")
                        .font(.header3)
                        .foregroundColor(.coffeeDark)
                } 
                .padding(24)
                .hAlign(.leading)
                
                    HStack{
                        ScrollView(.vertical,showsIndicators: false){
                            VStack{
                                ForEach(viewModel.categories,id:\.self){ item in
                                    Text("• \(item.name)")
                                        .modifier(VerticalRotationModifier(rotation: .anticlockwise))
                                        .font(.cBodyBold)
                                        .foregroundColor(viewModel.selectedCategory == item ? .white : .coffeeMud)
                                        .padding(.vertical,8)
                                        .onTapGesture{
                                            withAnimation(.easeInOut){
                                                viewModel.onEvent(.selectCategory(item))
                                            }
                                        }
                                    
                                }
                            }
                        }
                        .padding(.vertical)
                        .frame(width:56)
                        
                        .background{
                            Color.coffeeRed.clipShape(CustomCorner(corners: [.topRight], radius: 28))
                            
                        }
                        
                        Spacer()
                        StateView(state: viewModel.viewState,retry: {
                            viewModel.onEvent(.getProducts(viewModel.selectedCategory?.id ?? ""))
                        }){
                            
                                ScrollView(.vertical,showsIndicators: false){
                                    LazyVGrid(columns: gridItemLayout,spacing:0){
                                        ForEach(viewModel.products,id:\.self){item in
                                            CoffeeItemView(item:item)
                                                .matchedGeometryEffect(id: item.name, in: animation)
                                                .padding(.top,48)
                                                .onTapGesture {
                                                    router.navigateTo(.productDetail(item, animation))
                                                }
                                                }
                                        
                                                }.padding(.bottom,150)
                                        
                                }
                                .padding(.trailing)
                                .padding(.top)
                            
                        }
                        
                        
                    }
                


                
            }
            
                
        }.task{
            viewModel.onEvent(.getCategories)
        }
//        .overlay{
//            if let item = selectedItem,showDetail{
//                ProductDetailView(product: item, showDetail: $showDetail, animation: animation)
//
//            }
//        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
