//
//  Category.swift
//  CoffeeApp
//
//  Created by mohsen mokhtari on 8/15/23.
//


struct Category:Identifiable,Codable,Hashable {
   var id:String
    var name: String
    var type: CategoryType
    var products: [Product]
    
}

/// sample data
var categoryList:[Category] = [
    .init(id:"0", name: "Hot Teas", type: .hotTeas, products: [
        .init(id:"1",
              name: "Green Tea",
              price: 2.5,
              image: "https://img.freepik.com/free-photo/delicious-coffee-cup-studio_23-2150708022.jpg?t=st=1692198008~exp=1692201608~hmac=267596b5b00d8f0ba692b306cb6a88760b49a8cb0d286037523b878f9a4fdf1e&w=740",
              description: "Green tea is a type of tea that is made from Camellia sinensis leaves and buds that have not undergone the same withering and oxidation process used to make oolong teas and black teas.",
              category: .hotTeas
             ),
        .init(id:"2",
              name: "Black Tea",
              price: 3.5,
              image: "https://img.freepik.com/premium-photo/black-tea-realistic-lighting-bright-background-realistic-lighting-side-view_763111-1573.jpg?w=1060",
              description: "Black tea is a type of tea that is more oxidized than oolong, yellow, white and green teas. Black tea is generally stronger in flavor than other teas.",
              category: .hotTeas
             ),
        .init(
            id:"3",
            name: "Herbal Tea",
            price: 4.5,
            image: "https://img.freepik.com/free-photo/fresh-lemonade-rustic-table-with-organic-ingredients-generated-by-ai_188544-31783.jpg?t=st=1692198150~exp=1692201750~hmac=c7f5ee31f2483ad709e97770e5301e7b7800eb5fbeccfe659f4c167cfd99d998&w=1800",
            description: "Herbal teas—less commonly called tisanes are beverages made from the infusion or decoction of herbs, spices, or other plant material in hot water.",
            category: .hotTeas
        ),
        .init(
            id:"4",
            name: "Fruit Tea",
            price: 6.5,
            image: "https://img.freepik.com/free-photo/glass-orange-juice-with-lemon-wooden-tray_1340-35049.jpg?t=st=1692198249~exp=1692201849~hmac=284f6aff51e38effef13b27103c3e7654d48d0bb287d5a946892ab28c8bc314d&w=1480",
            description: "Fruit teas or tisanes are made from the infusion of fruit or berries and are packed with vitamins and antioxidants. They are naturally caffeine-free.",
            category: .hotTeas
        ),
    
    ]),
    .init(id:"1", name: "Ice Teas", type: .iceTeas, products: [
        .init(id:"5",
              name: "Green Tea",
              price: 2.5,
              image: "https://img.freepik.com/free-photo/delicious-coffee-cup-studio_23-2150708022.jpg?t=st=1692198008~exp=1692201608~hmac=267596b5b00d8f0ba692b306cb6a88760b49a8cb0d286037523b878f9a4fdf1e&w=740",
              description: "Green tea is a type of tea that is made from Camellia sinensis leaves and buds that have not undergone the same withering and oxidation process used to make oolong teas and black teas.",
              category: .hotTeas
             ),
        .init(id:"6",
              name: "Black Tea",
              price: 3.5,
              image: "https://img.freepik.com/premium-photo/black-tea-realistic-lighting-bright-background-realistic-lighting-side-view_763111-1573.jpg?w=1060",
              description: "Black tea is a type of tea that is more oxidized than oolong, yellow, white and green teas. Black tea is generally stronger in flavor than other teas.",
              category: .hotTeas
             ),
        .init(
            id:"7",
            name: "Herbal Tea",
            price: 4.5,
            image: "https://img.freepik.com/free-photo/fresh-lemonade-rustic-table-with-organic-ingredients-generated-by-ai_188544-31783.jpg?t=st=1692198150~exp=1692201750~hmac=c7f5ee31f2483ad709e97770e5301e7b7800eb5fbeccfe659f4c167cfd99d998&w=1800",
            description: "Herbal teas—less commonly called tisanes are beverages made from the infusion or decoction of herbs, spices, or other plant material in hot water.",
            category: .hotTeas
        ),
        .init(
            id:"8",
            name: "Fruit Tea",
            price: 6.5,
            image: "https://img.freepik.com/free-photo/glass-orange-juice-with-lemon-wooden-tray_1340-35049.jpg?t=st=1692198249~exp=1692201849~hmac=284f6aff51e38effef13b27103c3e7654d48d0bb287d5a946892ab28c8bc314d&w=1480",
            description: "Fruit teas or tisanes are made from the infusion of fruit or berries and are packed with vitamins and antioxidants. They are naturally caffeine-free.",
            category: .hotTeas
        ),
    
    ]),
    
    
        .init(id:"2",name: "Hot Coffees",type: .hotCoffees,products: [
            .init(
                id:"9",
                name: "Espresso",
                price: 2.5,
                image: "https://img.freepik.com/free-photo/delicious-coffee-cup-indoors_23-2150708142.jpg?t=st=1692197085~exp=1692200685~hmac=4bed7bb0c6fcfb846ef8c88e51ad2ae9ad5a821c0d14c9eae1da62b4d01e6298&w=1480",
                description: "Espresso is coffee of Italian origin, brewed by expressing or forcing a small amount of nearly boiling water under pressure through finely ground coffee beans.",
                category: .hotCoffees
            ),
            .init(
                id:"10",
                name: "Cappuccino",
                price: 3.5,
                image: "https://img.freepik.com/free-photo/cup-coffee-with-heart-drawn-foam_1286-70.jpg?1&w=1380&t=st=1692196512~exp=1692197112~hmac=11d082294edb360ddc7ebbaddcd0eecb8d1a11fc71038240bd78061a0897b6da",
                description: "A cappuccino is an espresso-based coffee drink that originated in Italy, and is traditionally prepared with steamed milkfoam.",
                category: .hotCoffees
                 ),
            .init(
                id:"11",
                name: "Latte",
                price: 4.5,
                image: "https://img.freepik.com/free-psd/coffee-cup-icon-isolated-3d-render-illustration_47987-8773.jpg?w=1060&t=st=1692196856~exp=1692197456~hmac=b6a595929d11e0c86b8b97f8ba61e9a902a9a0bb0df6105264a78192f4bf35a2",
                description: "A latte is a coffee drink made with espresso and steamed milk.",
                category: .hotCoffees
            ),
            .init(
                id:"12",
                name: "Mocha",
                price: 6.5,
                image: "https://img.freepik.com/free-photo/foamy-cappuccino-wood-table-generated-by-ai_24640-82293.jpg?t=st=1692196934~exp=1692200534~hmac=b565478022d62a042851f83d0047b2b971c02e27b6c5121093bc2061c4f843a1&w=1800",
                description: "A caffè mocha, also called mocaccino, is a chocolate-flavoured variant of a caffè latte.",
                category: .hotCoffees
            ),
            .init(
                id:"13",
                name: "Americano",
                price: 6.5,
                image: "https://img.freepik.com/free-photo/delicious-quality-coffee-cup_23-2150691441.jpg?t=st=1692197026~exp=1692200626~hmac=20374334bf8a1b22116c038f97e9c41e8b961a1cdf53c00f6f47cbbfd4096c9e&w=1480",
                description: "Caffè Americano or Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to, but different flavor from, traditionally brewed coffee.",
                category: .hotCoffees
            ),
            .init(
                id:"14",
                name: "Macchiato",
                price: 6.5,
                image: "https://img.freepik.com/free-photo/delicious-quality-coffee-cup_23-2150691321.jpg?t=st=1692197139~exp=1692200739~hmac=635c021aba28dc0a44b040639df186d7e8ae5738304b9eb1b280ad98b4d6b78d&w=1480",
                description: "Caffè macchiato, sometimes called espresso macchiato, is an espresso coffee drink with a small amount of milk, usually foamed.",
                category: .hotCoffees
            ),
            .init(
                id:"15",
                name: "Flat White",
                price: 6.5,
                image: "https://img.freepik.com/free-photo/hot-coffee-mug-with-cream-white-wooden-table-top-view_123827-26349.jpg?t=st=1692197218~exp=1692200818~hmac=f8c6b02bcdae221b11f3c2a5b853f6194f5a378ac18c549c0fe765eedecadcf6&w=1480",
                description: "A flat white is an espresso-based coffee drink. It is prepared by pouring microfoam over a single or double shot of espresso.",
                category: .hotCoffees
            ),
            .init(
                id:"16",
                name: "Affogato",
                price: 6.5,
                image: "https://img.freepik.com/free-photo/rustic-coffee-table-sets-frothy-latte-mood-generated-by-ai_188544-18577.jpg?t=st=1692197283~exp=1692200883~hmac=6f238c200101de078a0dae2a560ecea85ea355014c9043300f19655672212034&w=1800",
                description: "Affogato is an Italian coffee-based dessert. It usually takes the form of a scoop of vanilla gelato or ice cream topped or drowned with a shot of hot espresso.",
                category: .hotCoffees
            ),
        ]),
    
        .init(id:"3",name: "Drinks", type: .drinks, products: [
            .init(id:"17",
                  name: "Coca Cola",
                  price: 2.5,
                  image: "https://img.freepik.com/free-photo/fresh-cola-drink-glass_144627-16201.jpg?w=900&t=st=1692199304~exp=1692199904~hmac=211521689943173d9dc1e9a34f03d377faf4953a16358abcd1d69ce2abf54993",
                  description: "Coca-Cola, or Coke, is a carbonated soft drink manufactured by The Coca-Cola Company.",
                  category: .drinks
                 ),
            .init(
                id:"18",
                name: "Pepsi",
                price: 3.5,
                image: "https://img.freepik.com/free-photo/fresh-cola-drink-glass_144627-16201.jpg?w=900&t=st=1692199304~exp=1692199904~hmac=211521689943173d9dc1e9a34f03d377faf4953a16358abcd1d69ce2abf54993",
                description: "Pepsi is a carbonated soft drink manufactured by PepsiCo.",
                category: .drinks),
            .init(
                id:"19",
                name: "Sprite",
                price: 4.5,
                image: "https://img.freepik.com/free-photo/iced-chrysanthemum-tea-glass_1339-6236.jpg?w=1060&t=st=1692199590~exp=1692200190~hmac=ed4ee5f30a1a7b6924e2c3c9ad3dc17d7a6068d7fa079bf6968eaf59b1cd5732",
                description: "Sprite is a colorless, caffeine-free, lemon and lime-flavored soft drink created by The Coca-Cola Company.",
                category: .drinks),
            
        ]),
    .init(id:"4",name: "Bakery",type: .bakery,products: [
        .init(
            id:"20",
            name: "Croissant",
            price: 2.5,
            image: "https://img.freepik.com/free-photo/croissants-wooden-cutting-board_1150-28480.jpg?w=1480&t=st=1692199663~exp=1692200263~hmac=9860f7e6de7dcfd07583be3d40277a3acbc8b030d754893a4b58fef707d39348",
            description: "A croissant is a buttery, flaky, viennoiserie pastry of Austrian origin, named for its historical crescent shape.",
            category: .bakery
        ),
        .init(
            id:"21",
            name: "Muffin",
            price: 3.5,
            image: "https://img.freepik.com/free-photo/chocolate-cupcake_144627-21989.jpg?w=1380&t=st=1692199700~exp=1692200300~hmac=993d3feaf6bf830d1b4bc4994b27211e060c03858e97010e9f512744857ec00d",
            description: "A muffin is an individual-sized, baked product. It can refer to two distinct items, a part-raised flatbread that is baked and then cooked on a griddle, and a cupcake-like quickbread that is chemically leavened and then baked in a mold.",
            category: .bakery
        ),
        .init(
            id:"22",
            name: "Donut",
            price: 4.5,
            image: "https://img.freepik.com/free-photo/fresh-tasty-donuts-with-chocolate-glaze_144627-881.jpg?w=1800&t=st=1692268947~exp=1692269547~hmac=fdac11f1642ddff90a44231d8c26d8beed819acf2241a6bec3027e6dc23a64da",
            description: "A doughnut or donut is a type of fried dough confection or dessert food. The doughnut is popular in many countries and prepared in various forms as a sweet snack that can be homemade or purchased in bakeries, supermarkets, food stalls, and franchised specialty vendors.",
            category: .bakery
        ),
        .init(
            id:"23",
            name: "Bagel",
            price: 6.5,
            image: "https://img.freepik.com/free-photo/freshly-baked-donuts-rustic-wooden-table-generated-by-ai_188544-23744.jpg?t=st=1692269001~exp=1692272601~hmac=77f332757aa025c7ba6db33a7611c86dfe3466ef5e8dd3913bd03c0620128c37&w=1800",
            description: "A bagel, also historically spelled beigel, is a bread product originating in the Jewish communities of Poland.",
            category: .bakery),
        .init(
            id:"24",
            name: "Pretzel",
            price: 6.5,
            image: "https://img.freepik.com/free-photo/golden-baked-pretzels-rustic-wooden-table-generated-by-ai_188544-15223.jpg?t=st=1692269058~exp=1692272658~hmac=b4a9501ed7e15db08073d50577dcd59f12e27ccc94ea7ea7c86fd03e5e158545&w=1800",
            description: "A pretzel is a type of baked bread product made from dough most commonly shaped into a twisted knot.",
            category: .bakery),
    ]),
    
        .init(id:"5",name: "Pizza",type: .pizza,products: [
            .init(id:"25",name: "Margherita",price: 2.5,image: "margherita",description: "Pizza Margherita is a typical Neapolitan pizza, made with San Marzano tomatoes, mozzarella cheese, fresh basil, salt and extra-virgin olive oil.",category: .pizza),
            .init(id:"26",name: "Marinara",price: 3.5,image: "marinara",description: "Pizza marinara is a style of Neapolitan pizza in Italian cuisine seasoned with only tomato sauce, extra virgin olive oil, oregano and garlic.",category: .pizza),
            .init(id:"27",name: "Quattro Formaggi",price: 4.5,image: "quattro_formaggi",description: "Quattro formaggi is a variety of Italian pizza topped with a combination of four kinds of cheese, as the name suggests.",category: .pizza),
            .init(id:"28",name: "Carbonara",price: 6.5,image: "carbonara",description: "Pizza alla carbonara is a variety of Italian pizza topped with ingredients typical of carbonara sauce, inspired by the pasta dish of the same name.",category: .pizza),
            .init(id:"29",name: "Crudo",price: 6.5,image: "crudo",description: "Pizza Crudo is a variety of Italian pizza topped with ingredients typical of crudo ham.",category: .pizza),
            .init(id:"30",name: "Frutti di Mare",price: 6.5,image: "frutti_di_mare",description: "Pizza Frutti di Mare is a variety of Italian pizza topped with seafood, which may include shrimp, squid, clams, and other mollusks.",category: .pizza),
            .init(id:"31",name: "Capricciosa",price: 6.5,image: "capricciosa",description: "Pizza capricciosa is a style of pizza in Italian cuisine prepared with mozzarella cheese, Italian baked ham, mushroom, artichoke and tomato.",category: .pizza),
            .init(id:"32",name: "Diavola",price: 6.5,image: "diavola",description: "Pizza diavola is a type of pizza made with tomato, mozzarella, spicy salami and chili peppers.",category: .pizza),
        ])
]
