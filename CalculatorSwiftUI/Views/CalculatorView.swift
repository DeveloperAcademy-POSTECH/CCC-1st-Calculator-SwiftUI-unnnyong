//
//  CalculatorView.swift
//  CalculatorSwiftUI
//
//  Created by Eunyeong Kim on 2022/06/25.
//

import SwiftUI

struct CalculatorView: View {
    @State var currentNumber: Int = 0

    var body: some View {
        VStack(spacing: 0.0) {
            Spacer()
            NumberText(currentNumber: $currentNumber)
            ButtonsView()
        }
        .padding()
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
            .preferredColorScheme(.dark)
    }
}
