//
//  RecipeView.swift
//  Recipe App
//
//  Created by Diar Orynbek on 08.01.2023.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe
    
    var body: some View {
        ScrollView {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                //.frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white.opacity(0.7))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text("Description")
                        .font(.headline)
                    
                    Text(recipe.description)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Ingredients")
                            .font(.headline)
                        
                        Text(recipe.ingredients)
                    }
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Directions")
                            .font(.headline)
                        
                        Text(recipe.directions)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal)
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
