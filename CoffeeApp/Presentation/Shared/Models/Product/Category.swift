//
//  Category.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//

import FirebaseFirestoreSwift

struct Category:Identifiable,Codable,Hashable {
    @DocumentID var id: String?
    var name: String
    var type: CategoryType
    var products: [Product]
    
}

/// sample data
var categoryList:[Category] = [
    .init( name: "Hot Teas", type: .hotTeas, products: [
        .init(name: "Green Tea", price: 2.5, image: "green_tea", description: "Green tea is a type of tea that is made from Camellia sinensis leaves and buds that have not undergone the same withering and oxidation process used to make oolong teas and black teas.", category: .hotTeas),
        .init( name: "Black Tea", price: 3.5, image: "black_tea", description: "Black tea is a type of tea that is more oxidized than oolong, yellow, white and green teas. Black tea is generally stronger in flavor than other teas.", category: .hotTeas),
        .init( name: "Herbal Tea", price: 4.5, image: "herbal_tea", description: "Herbal teas—less commonly called tisanes are beverages made from the infusion or decoction of herbs, spices, or other plant material in hot water.", category: .hotTeas),
        .init( name: "Fruit Tea", price: 6.5, image: "fruit_tea", description: "Fruit teas or tisanes are made from the infusion of fruit or berries and are packed with vitamins and antioxidants. They are naturally caffeine-free.", category: .hotTeas),
    
    ]),
    .init( name: "Ice Teas", type: .iceTeas, products: [
        .init( name: "Green Tea", price: 2.5, image: "green_tea", description: "Green tea is a type of tea that is made from Camellia sinensis leaves and buds that have not undergone the same withering and oxidation process used to make oolong teas and black teas.", category: .iceTeas),
        .init( name: "Black Tea", price: 3.5, image: "black_tea", description: "Black tea is a type of tea that is more oxidized than oolong, yellow, white and green teas. Black tea is generally stronger in flavor than other teas.", category: .iceTeas),
        .init( name: "Herbal Tea", price: 4.5, image: "herbal_tea", description: "Herbal teas—less commonly called tisanes are beverages made from the infusion or decoction of herbs, spices, or other plant material in hot water.", category: .iceTeas),
        .init( name: "Fruit Tea", price: 6.5, image: "fruit_tea", description: "Fruit teas or tisanes are made from the infusion of fruit or berries and are packed with vitamins and antioxidants. They are naturally caffeine-free.", category: .iceTeas),
    
    ]),
    
        .init(name: "Hot Coffees",type: .hotCoffees,products: [
            .init(name: "Espresso",price: 2.5,image: "espresso",description: "Espresso is coffee of Italian origin, brewed by expressing or forcing a small amount of nearly boiling water under pressure through finely ground coffee beans.",category: .hotCoffees),
            .init(name: "Cappuccino",price: 3.5,image: "cappuccino",description: "A cappuccino is an espresso-based coffee drink that originated in Italy, and is traditionally prepared with steamed milk foam.",category: .hotCoffees),
            .init(name: "Latte",price: 4.5,image: "latte",description: "A latte is a coffee drink made with espresso and steamed milk.",category: .hotCoffees),
            .init(name: "Mocha",price: 6.5,image: "mocha",description: "A caffè mocha, also called mocaccino, is a chocolate-flavoured variant of a caffè latte.",category: .hotCoffees),
            .init(name: "Americano",price: 6.5,image: "americano",description: "Caffè Americano or Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee.",category: .hotCoffees),
            .init(name: "Macchiato",price: 6.5,image: "macchiato",description: "Caffè macchiato, sometimes called espresso macchiato, is an espresso coffee drink with a small amount of milk, usually foamed.",category: .hotCoffees),
            .init(name: "Flat White",price: 6.5,image: "flat_white",description: "A flat white is an espresso-based coffee drink. It is prepared by pouring microfoam over a single or double shot of espresso.",category: .hotCoffees),
            .init(name: "Affogato",price: 6.5,image: "affogato",description: "Affogato is an Italian coffee-based dessert. It usually takes the form of a scoop of vanilla gelato or ice cream topped or drowned with a shot of hot espresso.",category: .hotCoffees),
        ]),
    
        .init(name: "Drinks", type: .drinks, products: [
            .init(name: "Coca Cola",price: 2.5,image: "coca_cola",description: "Coca-Cola, or Coke, is a carbonated soft drink manufactured by The Coca-Cola Company.",category: .drinks),
            .init(name: "Pepsi",price: 3.5,image: "pepsi",description: "Pepsi is a carbonated soft drink manufactured by PepsiCo.",category: .drinks),
            .init(name: "Sprite",price: 4.5,image: "sprite",description: "Sprite is a colorless, caffeine-free, lemon and lime-flavored soft drink created by The Coca-Cola Company.",category: .drinks),
            
        ]),
    .init(name: "Bakery",type: .bakery,products: [
        .init(name: "Croissant",price: 2.5,image: "croissant",description: "A croissant is a buttery, flaky, viennoiserie pastry of Austrian origin, named for its historical crescent shape.",category: .bakery),
        .init(name: "Muffin",price: 3.5,image: "muffin",description: "A muffin is an individual-sized, baked product. It can refer to two distinct items, a part-raised flatbread that is baked and then cooked on a griddle, and a cupcake-like quickbread that is chemically leavened and then baked in a mold.",category: .bakery),
        .init(name: "Donut",price: 4.5,image: "donut",description: "A doughnut or donut is a type of fried dough confection or dessert food. The doughnut is popular in many countries and prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendors.",category: .bakery),
        .init(name: "Bagel",price: 6.5,image: "bagel",description: "A bagel, also historically spelled beigel, is a bread product originating in the Jewish communities of Poland.",category: .bakery),
        .init(name: "Pretzel",price: 6.5,image: "pretzel",description: "A pretzel is a type of baked bread product made from dough most commonly shaped into a twisted knot.",category: .bakery),
    ]),
    
        .init(name: "Pizza",type: .pizza,products: [
            .init(name: "Margherita",price: 2.5,image: "margherita",description: "Pizza Margherita is a typical Neapolitan pizza, made with San Marzano tomatoes, mozzarella cheese, fresh basil, salt and extra-virgin olive oil.",category: .pizza),
            .init(name: "Marinara",price: 3.5,image: "marinara",description: "Pizza marinara is a style of Neapolitan pizza in Italian cuisine seasoned with only tomato sauce, extra virgin olive oil, oregano and garlic.",category: .pizza),
            .init(name: "Quattro Formaggi",price: 4.5,image: "quattro_formaggi",description: "Quattro formaggi is a variety of Italian pizza topped with a combination of four kinds of cheese, as the name suggests.",category: .pizza),
            .init(name: "Carbonara",price: 6.5,image: "carbonara",description: "Pizza alla carbonara is a variety of Italian pizza topped with ingredients typical of carbonara sauce, inspired by the pasta dish of the same name.",category: .pizza),
            .init(name: "Crudo",price: 6.5,image: "crudo",description: "Pizza Crudo is a variety of Italian pizza topped with ingredients typical of crudo ham.",category: .pizza),
            .init(name: "Frutti di Mare",price: 6.5,image: "frutti_di_mare",description: "Pizza Frutti di Mare is a variety of Italian pizza topped with seafood, which may include shrimp, squid, clams, and other mollusks.",category: .pizza),
            .init(name: "Capricciosa",price: 6.5,image: "capricciosa",description: "Pizza capricciosa is a style of pizza in Italian cuisine prepared with mozzarella cheese, Italian baked ham, mushroom, artichoke and tomato.",category: .pizza),
            .init(name: "Diavola",price: 6.5,image: "diavola",description: "Pizza diavola is a type of pizza made with tomato, mozzarella, spicy salami and chili peppers.",category: .pizza),
        ])
]
