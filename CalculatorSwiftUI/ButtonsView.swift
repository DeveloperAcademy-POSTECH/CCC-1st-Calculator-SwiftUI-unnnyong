//
//  ButtonsView.swift
//  CalculatorSwiftUI
//
//  Created by Eunyeong Kim on 2022/06/25.
//

import SwiftUI

extension CalculatorView {
    struct ButtonsView: View {
        private let columns: [GridItem] = Array(
            repeating: GridItem(.flexible(), spacing: 8.0),
            count: 4
        )
        
        private let buttons: [CalculatorButtonStyle] = [
            CalculatorButtonStyle(type: .feature(type: .clear)),
            CalculatorButtonStyle(type: .feature(type: .plusAndMinus)),
            CalculatorButtonStyle(type: .feature(type: .percent)),
            CalculatorButtonStyle(type: .operator(type: .divide)),
            CalculatorButtonStyle(type: .number(value: "9")),
            CalculatorButtonStyle(type: .number(value: "8")),
            CalculatorButtonStyle(type: .number(value: "7")),
            CalculatorButtonStyle(type: .operator(type: .multiply)),
            CalculatorButtonStyle(type: .number(value: "6")),
            CalculatorButtonStyle(type: .number(value: "5")),
            CalculatorButtonStyle(type: .number(value: "4")),
            CalculatorButtonStyle(type: .operator(type: .minus)),
            CalculatorButtonStyle(type: .number(value: "3")),
            CalculatorButtonStyle(type: .number(value: "2")),
            CalculatorButtonStyle(type: .number(value: "1")),
            CalculatorButtonStyle(type: .operator(type: .plus)),
            CalculatorButtonStyle(type: .number(value: "0")),
            CalculatorButtonStyle(type: .feature(type: .point)),
            CalculatorButtonStyle(type: .operator(type: .equal))
        ]
        
        var body: some View {
            LazyVGrid(columns: columns, alignment: .center, spacing: 8.0) {
                ForEach(buttons) { button in
                    Button {
                        // TODO: Add Button Action
                    } label: {
                        ZStack {
                            Circle()
                                .foregroundColor(button.type.foregroundColor)
                                .scaledToFit()
                            button.type.view
                                .font(.title)
                                .foregroundColor(.white)
                        }
                    }
                    .foregroundColor(.clear)
                }
            }
        }
    }
}
