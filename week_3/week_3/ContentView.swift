//
//  ContentView.swift
//  week_3
//
//  Created by Arch Umeshbhai Patel on 2025-05-23.
//

import SwiftUI

struct ContentView: View {
    @State private var birthDate : Date = Date.now
    var body: some View {
        
        ListExample1()
//        VStack {
////            DatePicker(
////                "BirthDate : ",
////                selection: $birthDate,
////                in: ...Calendar.current.date(byAdding: .year,value: -1 ,to: Date.now)!,
////                displayedComponents: .date
////            )
////            Text("\(birthDate)")
//            
//        }
    }
}

#Preview {
    ContentView()
}
