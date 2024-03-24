//
//  Diseno1.swift
//  EjSwiftUI-Disenos
//
//  Created by Javier Rodríguez Gómez on 23/3/24.
//

import SwiftUI

struct Diseno1: View {
	@State private var volume: Double = 50
	
    var body: some View {
		ZStack {
			Color.black.opacity(0.95)
				.ignoresSafeArea()
			
			VStack {
				Image(.diseño1)
					.resizable()
					.scaledToFit()
				
				Rectangle()
					.fill(Color.black.opacity(0.95))
					.ignoresSafeArea()
					.overlay {
						VStack(spacing: 75) {
							HStack(spacing: 30) {
								CustomButton(symbol: "backward.fill") {
									print("Backward")
								}
								CustomButton(symbol: "stop.fill") {
									print("Stop")
								}
								CustomButton(symbol: "forward.fill") {
									print("Forward")
								}
							}
							HStack(spacing: 30) {
								CustomButton(symbol: "backward.end.fill") {
									print("Previous")
								}
								CustomButton(symbol: "play.fill") {
									print("Play")
								}
								CustomButton(symbol: "forward.end.fill") {
									print("Next")
								}
							}
							Slider(value: $volume, in: 0...100) {
								Text("Volume")
							} minimumValueLabel: {
								Image(systemName: "speaker")
									.foregroundStyle(.white)
							} maximumValueLabel: {
								Image(systemName: "speaker.wave.3")
									.foregroundStyle(.white)
							}
							.tint(.white.opacity(0.4))
						}
					}
			}
		}
    }
}

#Preview {
    Diseno1()
}

struct CustomButton: View {
	let symbol: String
	let action: () -> Void
	
	var body: some View {
		Button {
			action()
		} label: {
			Image(systemName: symbol)
				.font(.largeTitle)
				.foregroundStyle(.white)
				.padding(25)
				.background {
					Color.white.opacity(0.4)
				}
				.clipShape(.circle)
		}
	}
}
