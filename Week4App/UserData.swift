import SwiftUI
import Combine
//combine is for events (event-driven systems).


//final menas that no other class can inherit FROM this class.
final class UserData : ObservableObject {
    // Published means any time this value changes its updated everywhere.
    @Published var counter: Int = 0
    @Published var userInput: String = "zcxzcx" {
        willSet(newValue){
            print(newValue)
        }
    }
}
