import UIKit

//MARK: -OOP

let postTitle = "OOP"
let postText = "my new text"
let postAuthor = "VS"

let postTitle2 = "Functional"
let postText2 = "my new text2"
let postAuthor2 = postAuthor

class Post {
    var title = ""
    var text = ""
    var author = ""
}

let firstPost = Post()
firstPost.title = "POST title"
firstPost.text = "new text"
firstPost.author = "firstPostAuthor"

let secondPost = Post()
secondPost.title = "POST2 title"
secondPost.text = "new text2"
secondPost.author = "secondPostAuthor"

print("\(firstPost.author) has published new title: \(firstPost.title) with the text: \(firstPost.text)")
print("\(secondPost.author) has published new title: \(secondPost.title) with the text: \(secondPost.text)")

firstPost === secondPost

class Comment {
    var user = ""
    var numberOfLikes = 0
    
    func addLikes() {
        numberOfLikes += 1
    }
}

let firstComment = Comment()
firstComment.user = "AA"

firstComment.addLikes()
firstComment.addLikes()
firstComment.addLikes()

class Human {
    
    var name: String = ""
    var age: Int = 0
    
    init(myName: String, myAge: Int) {
        self.name = myName
        self.age = myAge
    }
    init() {}
}

let person = Human(myName: "VS", myAge: 27)
person.age

let person2 = Human()
person.age = 22

//MARK: -Inheritance

class Parent {
    
    var name: String = ""
    var age: Int = 0
    
    init(myName: String, myAge: Int) {
        self.name = myName
        self.age = myAge
    }
    func walk() {
        print("I can walk")
    }
    func eat() {
        print("I can eat")
    }
    func sleep() {
        print("I can sleep")
    }
}

let dad = Parent(myName: "Sam", myAge: 65)
dad.name
dad.age
dad.walk()

class Child : Parent {
    func feeding() {
        if age <= 2 {
            print("need to feed my child")
        } else {
            print("can eat independetly")
        }
        
    }
    
    func education() {
        if age >= 3 {
            print("my child is in kindergarden")
        } else if age < 3{
            print("too early for kindergarden")
        } else {
            print("too late for kindergarden")
        }
    }
}

let littleBoy = Child(myName: "Tom", myAge: 1)
littleBoy.feeding()
littleBoy.education()

//MARK: -Polymorphism

class Figure {
    func drawFigure() {}
}

class Circle: Figure {
    override func drawFigure() {
        print("draw Circle Figure")
    }
}

class Rectangle: Figure {
    override func drawFigure() {
        print("draw Rectangle figure")
    }
}

class Triangle: Figure {
    override func drawFigure() {
        print("draw Triangle figure")
    }
}

let circle = Circle()
let rectangle = Rectangle()
let triangle = Triangle()

func drawFigure(_ figure: Figure) {
    figure.drawFigure()
}

drawFigure(circle)
drawFigure(rectangle)
drawFigure(triangle)
