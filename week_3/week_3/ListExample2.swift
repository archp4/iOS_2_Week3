//
//  ListExample2.swift
//  week_3
//
//  Created by Arch Umeshbhai Patel on 2025-05-23.
//

import SwiftUI

struct ListExample2: View {
    var body: some View {
        VStack{
            DisclosureGroup("Hyper Cars"){
                ForEach(Car.hyperCarList()){car in
                    CarListTile(car: car)
                    .onTapGesture {
                        print("Tapped: \(car.model)")
                    }
                }
                .listStyle(.sidebar)
                .listRowBackground(Capsule().fill(Color.white).padding(2))
            }
        }
    }
}

#Preview {
    ListExample2()
}
