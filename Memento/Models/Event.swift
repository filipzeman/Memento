import Foundation

struct Event: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var date: String
    
}

let eventsData = [
    Event(image:"profile", title:"Father's birthday", date: "17.8."),
    Event(image:"profile", title:"David's birthday", date: "10.3."),
    Event(image:"profile", title:"Filip's nameday", date: "26.5."),

]
