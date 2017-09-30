//
//  main.swift
//  PulkonEXE
//
//  Created by Kamil Chrobak on 30.09.2017.
//  Copyright © 2017 Kamil Chrobak. All rights reserved.
//

import Foundation

func isArraySorted(array: [Int]) -> Bool{
     for i in 0..<array.count-1
    {
        if array[i] > array[i+1]
        {
        return false
        }
    }
   return true
}
var Tablica : [Int] = [1,2,3,4,5]
print (isArraySorted(array: Tablica))
