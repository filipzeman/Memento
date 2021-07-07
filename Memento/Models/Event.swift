import Foundation

struct Event: Identifiable {
    var id = UUID()
    var image: String
    var title: String
    var date: String
    
}

var eventsData = [
    Event(image:"profile", title:"Father's birthday", date: "04.07."),
    Event(image:"profile", title:"David's birthday", date: "05.07."),
    Event(image:"profile", title:"Filip's nameday", date: "08.07."),
    Event(image:"profile", title:"Eva's birthday", date: "20.7."),
    Event(image:"profile", title:"Barca's nameday", date: "26.7."),
    Event(image:"profile", title:"Lida's birthday", date: "10.8."),
    Event(image:"profile", title:"Grandma's nameday", date: "26.9."),

]
