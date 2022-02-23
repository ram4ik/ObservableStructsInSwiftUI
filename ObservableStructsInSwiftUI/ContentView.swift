//
//  ContentView.swift
//  ObservableStructsInSwiftUI
//
//  Created by Ramill Ibragimov on 23.02.2022.
//

import SwiftUI

struct ContentView: View {
    //@State private var person: Person
    @ObservedObject private var person: WrappedStruct<Person>
    
    init(person: Person) {
        //_person = State(initialValue: person)
        _person = ObservedObject(wrappedValue: WrappedStruct(withItem: person))
    }
    
    var body: some View {
        Form {
            Section("Edit Name") {
                //TextEditor(text: $person.name)
                TextEditor(text: $person.item.name)
            }
            Section("Age:") {
                //Stepper("\(person.age)", onIncrement: { person.age += 1 }, onDecrement: { person.age -= 1})
                Stepper("\(person.item.age)", onIncrement: { person.item.age += 1 }, onDecrement: { person.item.age -= 1})
            }
        }
    }
}

struct Person {
    var name: String
    var age: Int
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(person: Person(name: "Name", age: 42))
    }
}
