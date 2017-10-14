import Foundation
/*
func isArraySorted(array: [Int],condition : (Int, Int)->Bool)-> Bool
{
    for i in 0..<array.count-1 {
        if condition(array[i+1],array[i]) {
            return false
        }
    }
    return true
}
let up : (Int , Int)-> Bool = {(arg1 : Int,arg2 : Int) -> Bool in
   
    if  arg1 < arg2
    {
        return true
    }
    return false
}
let down : (Int , Int)-> Bool = {(arg1 : Int,arg2 : Int) -> Bool in
    
    if  arg1 > arg2
    {
        return true
    }
    return false
}
let five : (Int , Int)-> Bool = {(arg1 : Int,arg2 : Int) -> Bool in
    
    if  arg1 != 5 && arg2 != 5
    {
        return true
    }
    return false
}

var zmienna : [Int] = [1,2,3,4,5]
var zmienna2 : [Int] = [5,4,3,2,1]
var zmienna3 : [Int] = [5,5,5,5,5]
print (isArraySorted(array: zmienna, condition: up))
print (isArraySorted(array: zmienna2, condition: down))
print (isArraySorted(array: zmienna3, condition: five))

print (isArraySorted(array: zmienna3, condition: up))
print (isArraySorted(array: zmienna, condition: down))
print (isArraySorted(array: zmienna2, condition: five))

struct Stats
{
    var Max : Int
    var Min : Int
    init(maks : Int, min : Int) {
        self.Min = min
        self.Max = maks
    }
}

func MinMax(array : [Int]) -> Stats
{
    var Min = array[0]
    var max = array[0]
    for elem in array {
        if elem < Min {
            Min = elem
        } else if elem > max {
            max = elem
        }
    }
    
    return Stats(maks: max,min: Min)
    
    
}
var array1 : [Int] =  [1,2,3,4,5,6,1]

var stats1 : Stats = MinMax(array: array1)
print("MIN : \(stats1.Min) MAX : \(stats1.Max)")


struct StatCalculator
{
    
    var array : [Int]
    
    init (array : [Int])
    {
        self.array = array
    }
    
    func getMinMax()-> Stats
    {
        var Min = self.array[0]
        var max = self.array[0]
        for elem in self.array {
            if elem < Min {
                Min = elem
            } else if elem > max {
                max = elem
            }
        }
        
        return Stats(maks: max,min: Min)
        
        
    }
}


var calc : StatCalculator = StatCalculator(array : array1)
var wyniki = calc.getMinMax()
print ("ZWYKŁE : \(wyniki)")

struct StatCalc2
{
   static func getMinMax(array : [Int])-> Stats
    {
        var Min = array[0]
        var max = array[0]
        for elem in array {
            if elem < Min {
                Min = elem
            } else if elem > max {
                max = elem
            }
        }
        
        return Stats(maks: max,min: Min)
        
        
    }
}

var wyn = StatCalc2.getMinMax(array: array1)
print ("STATIC : \(wyn)")

protocol Wielokat {
    var liczbaBokow : Int {get set}
    func simpleDescription()
}
protocol  Printable {
    func getDescription()->String
}
extension Printable
{
    func getDescription()->String
    {
        return "Default"
    }
}
class Kwadrat : Wielokat,Printable
{
    var liczbaBokow: Int
    init(iloscBokow: Int) {
      
        self.liczbaBokow = iloscBokow
    }
    
    func simpleDescription() {
         print ("Jestem kwadratem i mam \(self.liczbaBokow) boki ")
        
    }
    //func getDescription() -> String {
      //  return "Jestem Kwadrat"
    //}

}
class Trojkat : Wielokat,Printable
{
    

    var liczbaBokow: Int
    init(iloscBokow: Int) {
        
        self.liczbaBokow = iloscBokow
    }
    
     func simpleDescription() {
        print ("Jestem trójkątem i mam \(self.liczbaBokow) boki ")
        
    }
    func getDescription() -> String {
        return "Jestem Trójkąt"
    }
}
var figury : [Wielokat] = [Kwadrat(iloscBokow: 4 ) ,Trojkat(iloscBokow: 3)]
for item in figury
{
    print(item.simpleDescription())
}

func myPrint(_ printer : Printable)
{
print(printer.getDescription())
}
var qwadrat : Kwadrat = Kwadrat(iloscBokow : 4)
var triangle : Trojkat = Trojkat(iloscBokow : 3)
myPrint(qwadrat)
myPrint(triangle)

*/

/*
 person
 -name:string
 -address:string
 
 
 student:person
 -program:string
 -year:int
 -free:double
 
 staff:person
 -school:String
 -pay:double
 
class Person
{
    var name :String
    var adress :String
    
    init(name :String, adress: String) {
        self.name = name
        self.adress = adress
    }
    static func getPlanetName() -> String
    {
        return "Ziemia"
    }
    func Wypisz()
    {
        print("IMIE : \(name) ADRESS : \(adress)")
    }
   
}
class Student : Person
{
    var program : String
    var year : Int
    var free : Double
    
    init(name : String,adress : String ,program : String,year : Int, free : Double)
    {
        self.program = program
        self.year = year
        self.free = free
        super.init(name: name, adress: adress)
    }
    override func Wypisz()
    {
    print("IMIE : \(name) ADRESS : \(adress) PROGRAM : \(program) YEAR : \(year) FREE : \(free)")
    }
    
}
class Staff: Person
{
    var school :String
    var pay : Double
    init(name :String,adress : String,school: String,pay: Double) {
        self.school = school
        self.pay = pay
        super.init(name: name, adress: adress)
    }
   override func Wypisz()
    {
        print("IMIE : \(name) ADRESS : \(adress) SCHOOL : \(school) PAY : \(pay)")
    }
    
}

var student1: Student = Student(name: "Kamil", adress : "Podsarnie", program : "Informatyka",year: 18,free: 1)
var staw : Staff = Staff(name : "Jan",adress : "Olszówka",school : "technikum",pay: 210)
var persona1 : [Person] = [student1,staw]
for item in persona1
{
item.Wypisz()
}
var planeta = Person.getPlanetName()
print(planeta)

 klasa autor name,email,gender
klasa book name author  price id_ksiazki
 
enum Gender: String {
case male = "male"
case female = "female"
}
class Autor
{
    var name : String
    var email : String
    var gender : Gender
    init(name : String , email : String , gender : Gender) {
        self.name = name
        self.email = email
        self.gender = gender
    }

}

class Book
{
    var name: String
    var author: Autor
    var price:Int
    var id_ksiazki: Int
    static var bookAmount : Int = 0
    init(name: String, price: Int, id_ksiazki: Int,autor : Autor)
    {
        Book.bookAmount+=1
        self.name = name
        self.price = price
        self.id_ksiazki = id_ksiazki
        self.author = autor
    }
}

var ksiazka : Book = Book(name : "Harry Potter", price : 66, id_ksiazki: 1 ,autor: Autor(name: "Jan Gil",email: "giljan@kamczil.net",gender : Gender.male) )
print("\(ksiazka.id_ksiazki) \(ksiazka.name) \(ksiazka.price) \(ksiazka.author.name) \(ksiazka.author.email) \(ksiazka.author.gender)")

var giljon: Book = Book(name: "Matematyka rozszerzona", price: 69, id_ksiazki: 2, autor: Autor(name: "Anna worwa szybsza niz wyglada", email: "no@no.no", gender: Gender.female))
print("\(giljon.id_ksiazki) \(giljon.name) \(giljon.price) \(giljon.author.name) \(giljon.author.email) \(giljon.author.gender)")

var kamczil: Book = Book(name: "Golf 5 w gazie", price: 120, id_ksiazki: 3, autor: Autor(name: "Kamczill aka fighter", email: "kamczil@no.no", gender: Gender.male))
print("\(kamczil.id_ksiazki) \(kamczil.name) \(kamczil.price) \(kamczil.author.name) \(kamczil.author.email) \(kamczil.author.gender)")


print("Ilość sprzedanych książek : \(Book.bookAmount)")


*/

/*
protocol Movable {
    func MoveUp()
    func MoveDown()
    func MoveLeft()
    func MoveRight()
}

class MovablePoint: Movable
{
    var x : Int
    var y : Int
    var xSpeed : Int
    var ySpeed : Int
    init(_ x : Int, _ y : Int, _ xSpeed : Int, _ ySpeed : Int) {
        self.x = x
        self.y = y
        self.xSpeed = xSpeed
        self.ySpeed = ySpeed
        
    }
    func MoveUp() {
        y+=ySpeed
    }
    func MoveDown() {
        y-=ySpeed
    }
    func MoveLeft() {
        x-=xSpeed
    }
    func MoveRight() {
        x+=xSpeed
    }
}

class MovableCircle : Movable
{
    var radius : Int
    var center : MovablePoint
    init(_ center : MovablePoint, _ radius : Int) {
        self.radius = radius
        self .center = center
    }
  
    func MoveUp() {
        center.y+=center.ySpeed
    }
    func MoveDown() {
        center.y-=center.ySpeed
    }
    func MoveLeft() {
        center.x-=center.xSpeed
    }
    func MoveRight() {
        center.x+=center.xSpeed
    }
}
var punkt : MovablePoint = MovablePoint(0,0,1,1)
var kolko : MovableCircle = MovableCircle(punkt,4)
print("\(punkt.x),\(punkt.y)")
kolko.MoveUp()
print("Idę w góre")
print("\(punkt.x),\(punkt.y)")
kolko.MoveRight()
print("Idę w prawo")
print("\(punkt.x),\(punkt.y)")
kolko.MoveDown()
print("Idę w dół")
print("\(punkt.x),\(punkt.y)")
kolko.MoveDown()
print("Idę w dół")
print("\(punkt.x),\(punkt.y)")



protocol GeometricObject{
    
    func getPerimeter()->Double
    func getArea()->Double
    
    
}
protocol  Resizable{
    func resize (procent : Double)
}
class Circle: GeometricObject{
    
    var radius: Double = 1.0
    init(radius : Double ) {
    self.radius = radius
    }
    func getPerimeter() -> Double {
        return 2 * radius
    }
    func getArea() -> Double {
        return Double.pi * radius * radius
    }
}
class ResizableCircle : Circle , Resizable
{
   
    func resize(procent : Double) {
        
       radius =  radius + (radius * procent / 100)
    }
    
}
var kolko : ResizableCircle = ResizableCircle(radius : 2)
kolko.resize(procent: 1)
print("Pole : \(kolko.getArea()) cm^2")

*/
