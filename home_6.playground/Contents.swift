import UIKit


class Post {
    var name = "vlad"
    var age = "34"
    var surname = "shimchenko"
}


let firstPost = Post()

print(Post().name)
print(firstPost.age)
print(Post().surname)

let secondPost = firstPost

secondPost.surname = "kotov"

print(secondPost.surname)

print(firstPost.surname)




