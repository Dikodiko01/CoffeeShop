//
//  CategoryView.swift
//  Recipe App
//
//  Created by Diar Orynbek on 08.01.2023.
//

import SwiftUI

struct CategoryView: View {
    var category: Category
    
    var body: some View {
        ScrollView {
            RecipeList(recipes: Recipe.all.filter{ $0.categoty == category.rawValue})
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: Category.dessert)
    }
}
