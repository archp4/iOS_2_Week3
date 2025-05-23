//
//  list_example_1.swift
//  week_3
//
//  Created by Arch Umeshbhai Patel on 2025-05-23.
//

import SwiftUI

struct ListExample1: View {
    @State private var cars = Car.getSampleCars()
    @State private var searchQuery = ""
    var body: some View{
        NavigationStack{
            List{
                ForEach(searchCar(searchItem: searchQuery)){car in
                    CarListTile(car: car)
                    .onTapGesture {
                        print("Tapped: \(car.model)")
                        
                    }
//                    .onLongPressGesture(perform: {
//                        print("Long Pressed: \(car.model)")
//                    })
                }
                .onMove(perform: { soruce, desenation in
                    cars.move(fromOffsets: soruce, toOffset: desenation)
                })
                .onDelete(perform: { indexSet in
                    cars.remove(atOffsets: indexSet)
                })
                .listStyle(.sidebar)
                .listRowBackground(Capsule().fill(Color.green).padding(2))
            }
            .searchable(text: $searchQuery,prompt: "Search Car Model")
            .navigationTitle("Arch Patel")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    private func searchCar(searchItem: String) -> [Car]{
        if (searchItem.isEmpty) {
            return cars
        }
        var result: [Car] = [];
        for car in cars {
            if (car.model.contains(searchItem)){
                result.append(car)
            }
        }
        return result
    }
}

#Preview {
    ListExample1()
}
