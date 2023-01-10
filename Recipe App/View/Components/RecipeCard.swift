//
//  RecipeCard.swift
//  Recipe App
//
//  Created by Diar Orynbek on 08.01.2023.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    
    var body: some View {
        VStack {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white.opacity(0.7))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
        }
        .aspectRatio(contentMode: .fit)
        .overlay {
            Text(recipe.name)
                .foregroundColor(.white)
                .font(.title3)
                .frame(width: 100, height: 230, alignment: .bottom)
                .font(.headline)
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
//        VStack {
//            AsyncImage(url: URL(string: recipe.image)) { image in
//                image
//            } placeholder: {
//                Image(systemName: "photo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 40, height: 40)
//                    .foregroundColor(.white.opacity(0.7))
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//            }
//        }
//        .frame(width: 400, height: 400, alignment: .top)
//        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
//        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
//        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)
    }
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: Recipe.all[0])
    }
}
