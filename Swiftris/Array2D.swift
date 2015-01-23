//
//  Array2D.swift
//  Swiftris
//
//  Created by Adam Kaplan on 1/23/15.
//  Copyright (c) 2015 Adam Kaplan. All rights reserved.
//

class Array2D<T> {
//    #1
    let columns: Int
    let rows: Int
//    #2
    var array: Array<T?>
    
    init(columns: Int, rows: Int){
        self.columns = columns
        self.rows = rows
//    #3
        array = Array<T?>(count: rows * columns, repeatedValue: nil)
    }
//    #4
    subscript(column: Int, row:Int) -> T? {
        get {
            return array[(row*columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}