//
//  RecipeList.swift
//  Recipe App
//
//  Created by Diar Orynbek on 08.01.2023.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    
    var body: some View {
        VStack {
            HStack {
                Text("\(recipes.count) recipes")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                
            Spacer()
                
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)]) {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)) {
                        RecipeCard(recipe: recipe)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeList(recipes: Recipe.all)
        }
    }
}
