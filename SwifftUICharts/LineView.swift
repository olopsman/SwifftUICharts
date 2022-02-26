//
//  LineView.swift
//  SwifftUICharts
//
//  Created by Paulo Orquillo on 26/02/22.
//

import SwiftUI

struct LineView: View {
    var dataPoints: [Double]
    
    var highestPoint: Double {
        let max = dataPoints.max() ?? 1.0
        if max == 0 { return 1.0 }
        return max
    }
    var body: some View {
        GeometryReader { geometry in
            let height = geometry.size.height
            let width = geometry.size.width
            
            Path { path in
                path.move(to: CGPoint(x: 0, y: height * ratio(for: 0)))
                
                
                for index in 1..<dataPoints.count {
                    path.addLine(to: CGPoint(x: CGFloat(index) * width / CGFloat(dataPoints.count - 1), y: height * self.ratio(for: index)))
                }
            }
            .stroke(Color.accentColor, style: StrokeStyle(lineWidth: 2, lineJoin: .round))
        }
        .padding(.vertical)
    }
    
    private func ratio(for index: Int) -> Double {
        dataPoints[index] / highestPoint
    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView(dataPoints: [1,2,3,1,3,4,2])
    }
}
