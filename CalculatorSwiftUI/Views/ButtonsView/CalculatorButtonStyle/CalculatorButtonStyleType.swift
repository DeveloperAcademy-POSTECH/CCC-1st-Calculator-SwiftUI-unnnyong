//
//  CalculatorButtonStyleType.swift
//  CalculatorSwiftUI
//
//  Created by Eunyeong Kim on 2022/06/25.
//

import SwiftUI

enum CalculatorButtonStyleType {
    case feature(type: FeatureType)
    case `operator`(type: OperationType)
    case number(value: String)
    
    enum FeatureType: String, CaseIterable {
        case clear = "C"
        case plusAndMinus
        case percent
        case point
        
        @ViewBuilder var view: some View {
            switch self {
            case .clear:
                Text("C")
            case .plusAndMinus:
                Image(systemName: "plus.forwardslash.minus")
            case .percent:
                Image(systemName: "percent")
            case .point:
                Text(".")
            }
        }
    }
    
    enum OperationType: String, CaseIterable {
        case divide
        case multiply
        case minus
        case plus
        case equal
        
        @ViewBuilder var view: some View {
            Image(systemName: rawValue)
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .feature:
            return Color(uiColor: .lightGray)
        case .operator:
            return .orange
        case .number:
            return Color(uiColor: .darkGray)
        }
    }
    
    @ViewBuilder var view: some View {
        switch self {
        case .feature(let `type`):
            type.view
        case .operator(let `type`):
            type.view
        case .number(let value):
            Text("\(value)")
        }
    }
}
