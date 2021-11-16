//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Jaime Uribe on 15/11/21.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            LazyHGrid(rows: gridLayouy, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true))
                {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
                
            }// GRID
        }// SCROLL
        .frame(height: 140)
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackGround)
            .padding()
    }
}
