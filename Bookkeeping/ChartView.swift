//
//  ChartView.swift
//  Bookkeeping
//
//  Created by Kristian Mitchell on 3/6/23.
//

import SwiftUI
import Charts

struct TestData {
    var name: String
    var value: Int
}

struct ChartView: View {
    
    let testData: [TestData] = [
        TestData(name:"A", value: 3),
        TestData(name:"B", value: 5),
        TestData(name: "C", value: 10)
    ]
    
    var body: some View {
        Chart(testData, id: \.name) { data in
           LineMark(
            x: .value("Name", data.name),
            y: .value("Value", data.value)
           )
           .foregroundStyle(.green)
            RuleMark(
                y: .value("Threshold", 7)
                )
        }
    }
}





struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
