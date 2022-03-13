//
//  main.swift
//  FoodRecipe
//
//  Created by Ilham Rizki Baharsyah on 12/03/22.
//

import Foundation

print("Welcome to Dicoding Resto!")
print("Let's make some food")
print("--------------------------")
print("What do you want to make?", terminator: " "); let food = readLine() ?? ""
print("What total item do you want add?", terminator: " "); let total = readLine() ?? "0"
print("--------------------------")

if let totalItem: Int = Int(total) {
    var recipe = [String]()
    for index in 1...totalItem {
        print("Input item \(index):", terminator: " "); let Item = readLine() ?? ""
        recipe.append(Item)
    }
    print("How long? (in minute)", terminator: " "); let time = readLine() ?? "0"
    recipe.sort()
    print("--------------------------")
    print("you want make \(food), taking time \(time) with recipe")
    for (index, value) in recipe.enumerated() {
        print("\(index+1). \(value)")
    }
}
