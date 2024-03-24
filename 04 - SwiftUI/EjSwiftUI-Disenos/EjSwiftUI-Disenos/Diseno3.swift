//
//  Diseno3.swift
//  EjSwiftUI-Disenos
//
//  Created by Javier Rodríguez Gómez on 24/3/24.
//

import SwiftUI

struct Diseno3: View {
    var body: some View {
		NavigationStack {
			VStack {
				VStack(spacing: 40.0) {
					HStack {
						CustomButton2(symbol: "plus", color: .blue) {
							print("Add")
						}
						CustomButton2(symbol: "rectangle.and.pencil.and.ellipsis", color: .teal) {
							print("Edit")
						}
						CustomButton2(symbol: "trash", color: .red) {
							print("Delete")
						}
					}
					HStack(spacing: 55.0) {
						CustomButton2(symbol: "checkmark", color: .green) {
							print("OK")
						}
						CustomButton2(symbol: "xmark", color: .red) {
							print("Cancel")
						}
					}
				}
				Divider()
				List {
					Text("Tarea 1")
					Text("Tarea 2")
					Text("Tarea 3")
					Text("Tarea 4")
					Text("Tarea 5")
				}
				.listStyle(.inset)
			}
			.navigationTitle("Lista de tareas")
		}
    }
}

#Preview {
    Diseno3()
}

struct CustomButton2: View {
	let symbol: String
	let color: Color
	let action: () -> Void
	
	var body: some View {
		Button {
			action()
		} label: {
			Image(systemName: symbol)
				.font(.largeTitle)
				.padding()
		}
		.buttonStyle(.borderedProminent)
		.buttonBorderShape(.circle)
		.tint(color)
	}
}
