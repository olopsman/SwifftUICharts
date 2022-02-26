//
//  LineChartView.swift
//  SwifftUICharts
//
//  Created by Paulo Orquillo on 26/02/22.
//

import SwiftUI

struct LineChartView: View {
    var dataPoints: [Double]
    var lineColor: Color = .red
    var outerCircleColor: Color = .red
    var innerCircleColor: Color = .white
    
    var body: some View {
        ZStack {
            LineView(dataPoints: dataPoints)
                .accentColor(lineColor)
            
            LineChartCircleView(dataPoints: dataPoints, radius: 3.0)
                .accentColor(outerCircleColor)
            
            LineChartCircleView(dataPoints: dataPoints, radius: 1.0)
                .accentColor(innerCircleColor)
        }
    }
}

struct LineChartView_Previews: PreviewProvider {
    static var previews: some View {
        LineChartView(dataPoints: [1,2,3,2,3,5,8,6])
    }
}
