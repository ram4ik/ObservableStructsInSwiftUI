//
//  ObservableStructsInSwiftUIApp.swift
//  ObservableStructsInSwiftUI
//
//  Created by Ramill Ibragimov on 23.02.2022.
//

import SwiftUI

@main
struct ObservableStructsInSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(person: Person(name: "Name", age: 42))
        }
    }
}
