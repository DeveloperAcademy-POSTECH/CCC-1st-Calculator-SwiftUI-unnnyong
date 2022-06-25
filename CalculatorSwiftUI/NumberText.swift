//
//  NumberText.swift
//  CalculatorSwiftUI
//
//  Created by Eunyeong Kim on 2022/06/25.
//

import SwiftUI

extension CalculatorView {
    struct NumberText: View {
        @Binding var currentNumber: Int
        
        var body: some View {
            Text("\(currentNumber)")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .lineLimit(1)
                .font(.system(size: 90.0))
                .minimumScaleFactor(0.5)
        }
    }
}
