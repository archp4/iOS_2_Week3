//
//  CarListTile.swift
//  week_3
//
//  Created by Arch Umeshbhai Patel on 2025-05-23.
//

import SwiftUI

struct CarListTile: View {
    let car : Car
    var body: some View {
        HStack{
            VStack(alignment: .leading, content: {
                Text(car.model).font(.headline)
                Text(car.make).font(.subheadline)
            })
            Spacer()
            Image(systemName: car.isFavorite ? "star.fill" : "star")
        }
    }
}

#Preview {
    CarListTile(car: Car(model: "String", make: "String", speed: "String", isFavorite: false))
}
