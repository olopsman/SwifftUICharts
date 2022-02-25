//
//  BarView.swift
//  SwifftUICharts
//
//  Created by Paulo Orquillo on 26/02/22.
//

import SwiftUI

struct BarView: View {
    var datum: Double
    var colors: [Color]
    
    var gradient: LinearGradient {
        LinearGradient(gradient: Gradient(colors: colors), startPoint: .top, endPoint: .bottom)
    }
    
    var body: some View {
        Rectangle()
            .fill(gradient)
            .opacity(datum == 0.0 ? 0.0 : 1.0)
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(datum: 1.0, colors: [.green, .blue])
    }
}
