//
//  ActivityView.swift
//  SwifftUICharts
//
//  Created by Paulo Orquillo on 26/02/22.
//

import SwiftUI

struct ActivityView: View {
    @State private var moveValues: [Double] = ActivityView.mockData(24, in: 0...300)
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Move").bold()
                .foregroundColor(.red)
            
            BarChartView(data: moveValues, colors: [.red, .orange])
        }
    }
    
    
    static func mockData(_ count: Int, in range: ClosedRange<Double>) -> [Double] {
        (0..<count).map { _ in .random(in: range)}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}

