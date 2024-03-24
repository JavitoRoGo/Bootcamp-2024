//
//  Diseno2.swift
//  EjSwiftUI-Disenos
//
//  Created by Javier Rodríguez Gómez on 23/3/24.
//

import SwiftUI

struct Diseno2: View {
    var body: some View {
		VStack {
			Image(systemName: "cloud.drizzle")
				.resizable()
				.scaledToFit()
				.frame(height: 250)
			Rectangle()
				.fill(.secondary)
				.frame(height: 3)
				.padding(.horizontal)
			HStack(alignment: .top, spacing: 25.0) {
				VStack {
					Text("Weather")
						.font(.largeTitle)
					Image(systemName: "cloud.sun")
						.resizable()
						.scaledToFit()
						.frame(height: 85)
				}
				VStack(spacing: 15.0) {
					Text("Temp")
						.font(.largeTitle)
					Text("2º")
						.font(.system(size: 85))
				}
				VStack {
					Text("Daily")
						.font(.largeTitle)
					Image(systemName: "thermometer")
						.resizable()
						.scaledToFit()
						.frame(height: 85)
				}
			}
			Rectangle()
				.fill(.secondary)
				.frame(height: 3)
				.padding(.horizontal)
			HStack(alignment: .top, spacing: 60) {
				VStack {
					Image(systemName: "humidity")
						.resizable()
						.scaledToFit()
						.frame(height: 50)
					Text("55%")
						.font(.title)
				}
				VStack {
					Image(systemName: "wind")
						.resizable()
						.scaledToFit()
						.frame(height: 50)
					Text("2 km/h")
						.font(.title)
				}
				VStack {
					Image(systemName: "umbrella.percent")
						.resizable()
						.scaledToFit()
						.frame(height: 50)
					Text("11%")
						.font(.title)
				}
			}
			Rectangle()
				.fill(.secondary)
				.frame(height: 3)
				.padding(.horizontal)
			HStack(alignment: .top, spacing: 60.0) {
				VStack {
					Image(systemName: "aqi.low")
						.resizable()
						.scaledToFit()
						.frame(height: 50)
					Text("3")
						.font(.title)
				}
				VStack {
					Image(systemName: "sun.max")
						.resizable()
						.scaledToFit()
						.frame(height: 50)
					Text("11")
						.font(.title)
				}
				VStack {
					Image(systemName: "eye")
						.resizable()
						.scaledToFit()
						.frame(height: 50)
					Text("22 km")
						.font(.title)
				}
			}
		}
    }
}

#Preview {
    Diseno2()
}
