//
//  RecipeModel.swift
//  Recipe App
//
//  Created by Diar Orynbek on 08.01.2023.
//

import Foundation

enum Category: String, Identifiable , CaseIterable {
    var id: String { self.rawValue }
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable { // unique each recipes
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let categoty: Category.RawValue
    let datePublished: String
}
extension Recipe  {
    static let all: [Recipe] = [
        Recipe(name: "coffee_1", image: "coffee_1", description: "(Descriptions)Every week you receive a new meal plan based on family size, intolerances, meal types, and other personal preferences.", ingredients: "(Ingredietns) 1 cup regular rolled oats¾ cup chopped Medjool dates, soaked ¼ cup golden raisins", directions: "INSTRUCTIONS", categoty: "Soup", datePublished: "2019-11-11"),
        Recipe(name: "coffee_2", image: "coffee_2", description: "(Descriptions)Every week you receive a new meal plan based on family size, intolerances, meal types, and other personal preferences.", ingredients: "(Ingredietns) 1 cup regular rolled oats¾ cup chopped Medjool dates, soaked ¼ cup golden raisins", directions: "INSTRUCTIONS", categoty: "Salad", datePublished: "2021-11-11"),
        Recipe(name: "coffee_3", image: "coffee_3", description: "(Descriptions)Every week you receive a new meal plan based on family size, intolerances, meal types, and other personal preferences.", ingredients: "(Ingredietns) 1 cup regular rolled oats¾ cup chopped Medjool dates, soaked ¼ cup golden raisins", directions: "INSTRUCTIONS", categoty: "Appetizer", datePublished: "2021-11-12"),
        Recipe(name: "coffee_4", image: "coffee_4", description: "(Descriptions)Every week you receive a new meal plan based on family size, intolerances, meal types, and other personal preferences.", ingredients: "(Ingredietns) 1 cup regular rolled oats¾ cup chopped Medjool dates, soaked ¼ cup golden raisins", directions: "INSTRUCTIONS", categoty: "Main", datePublished: "2021-11-13"),
        Recipe(name: "coffee_5", image: "coffee_5", description: "(Descriptions)Every week you receive a new meal plan based on family size, intolerances, meal types, and other personal preferences.", ingredients: "(Ingredietns) 1 cup regular rolled oats¾ cup chopped Medjool dates, soaked ¼ cup golden raisins", directions: "INSTRUCTIONS", categoty: "Main", datePublished: "2021-11-14"),
        Recipe(name: "coffee_6", image: "coffee_6", description: "(Descriptions)Every week you receive a new meal plan based on family size, intolerances, meal types, and other personal preferences.", ingredients: "(Ingredietns) 1 cup regular rolled oats¾ cup chopped Medjool dates, soaked ¼ cup golden raisins", directions: "INSTRUCTIONS", categoty: "Side", datePublished: "2021-11-15"),
        Recipe(name: "coffee_7", image: "coffee_7", description: "(Descriptions)Every week you receive a new meal plan based on family size, intolerances, meal types, and other personal preferences.", ingredients: "(Ingredietns) 1 cup regular rolled oats¾ cup chopped Medjool dates, soaked ¼ cup golden raisins", directions: "INSTRUCTIONS", categoty: "Dessert", datePublished: "2021-11-16")
    ]
}

