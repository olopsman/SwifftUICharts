//
//  HeartRateview.swift
//  SwifftUICharts
//
//  Created by Paulo Orquillo on 26/02/22.
//

import SwiftUI

struct HeartRateview: View {
    @State private var dataPoints: [Double] = [1,3,2,4,2,8,11,7,26,19]
    var body: some View {
        LineChartView(dataPoints: dataPoints)
            .frame(height: 200)
            .padding()
            .background(Color.gray.opacity(0.1).cornerRadius(16))
            .padding()
    }
}

struct HeartRateview_Previews: PreviewProvider {
    static var previews: some View {
        HeartRateview()
    }
}
