//
//  ColorSelectorView.swift
//  Framework
//
//  Created by Patrycja Włodarska on 19/09/2023.
//

import SwiftUI

struct ColorSelectorView: View {
    @Binding var selectedColor: Color
    
    let colors: [Color] = [.red, .purple, .green, .yellow]
    
    public var body: some View {
        HStack {
            ForEach(colors, id: \.self) {
                color in
                Image(systemName: selectedColor == color ? "record.circle.fill" : "circle.fill")
                    .foregroundColor(color)
                    .onTapGesture {
                    selectedColor = color
                }
            }
        }
    }
}

struct ColorSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSelectorView(selectedColor: .constant(.red))
    }
}
