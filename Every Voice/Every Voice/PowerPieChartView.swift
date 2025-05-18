//
//  PowerPieChartView.swift
//  Every Voice
//
//  Created by Joshua Hyman on 5/16/25.
//

import SwiftUI

struct PowerPieChartView: View {
    let segments: [PowerSegment]

    var total: Double {
        segments.reduce(0) { $0 + $1.value }
    }

    var angles: [Angle] {
        var currentAngle: Double = -90
        return segments.map { segment in
            let degrees = segment.value / total * 360
            defer { currentAngle += degrees }
            return .degrees(currentAngle)
        }
    }

    var body: some View {
        GeometryReader { geometry in
            VStack {
                ZStack {
                    ForEach(segments.indices, id: \.self) { index in
                        let segment = segments[index]
                        let startAngle = angles[index]
                        let endAngle = index + 1 < angles.count ? angles[index + 1] : .degrees(270)

                        PieSlice(startAngle: startAngle, endAngle: endAngle)
                            .fill(segment.color)
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.width)

                // Legend
                HStack {
                    ForEach(segments, id: \.label) { segment in
                        HStack {
                            Circle()
                                .fill(segment.color)
                                .frame(width: 12, height: 12)
                            Text(segment.label)
                                .font(.caption)
                        }
                        .padding(.trailing, 8)
                    }
                }
                .padding(.top, 4)
            }
        }
        .aspectRatio(1.2, contentMode: .fit)
    }
}

struct PieSlice: Shape {
    var startAngle: Angle
    var endAngle: Angle

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        path.move(to: center)

        path.addArc(
            center: center,
            radius: rect.width / 2,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: false
        )

        path.closeSubpath()
        return path
    }
}
