//
//  Diseno4.swift
//  EjSwiftUI-Disenos
//
//  Created by Javier Rodríguez Gómez on 24/3/24.
//

import SwiftUI

struct Diseno4: View {
	let faces: [Face] = (1...9).map { Face(name: "face\($0)") }
	let columns: [GridItem] = [GridItem(.adaptive(minimum: 100))]
	
    var body: some View {
		NavigationStack {
			ZStack(alignment: .bottom) {
				ScrollView {
					LazyVGrid(columns: columns) {
						ForEach(faces) { face in
							face.image
						}
					}
				}
				HStack {
					Image(systemName: "phone.fill")
						.font(.largeTitle)
						.foregroundStyle(.white)
						.padding(30)
						.background(.green)
						.clipShape(.circle)
					Image(systemName: "message.fill")
						.font(.largeTitle)
						.foregroundStyle(.white)
						.padding(28)
						.background(.green)
						.clipShape(.circle)
					Image(systemName: "video.fill")
						.font(.largeTitle)
						.foregroundStyle(.white)
						.padding(30)
						.background(.green)
						.clipShape(.circle)
				}
			}
			.background(Color(red: 184/255, green: 235/255, blue: 255/255))
			.navigationTitle("Favoritos")
		}
    }
}

#Preview {
    Diseno4()
}


struct Face: Identifiable {
	let id = UUID()
	let name: String
	
	var image: Image {
		Image(name)
	}
}
