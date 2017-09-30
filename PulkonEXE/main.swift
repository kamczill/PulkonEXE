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
    
    var array1 : [Int] = [1,2,3,4,56]
    
    init (array : [Int])
    {
        self.array1 = array
    }
    
    func getMinMax(array: [Int])-> Stats
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
*/
