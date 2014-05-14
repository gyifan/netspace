// CSCI 208 Term Project F# - Phase 3
// Yifan Ge
// 3/2/2012

// This program is designed to demonstrating the overloading property in F#. 
// F# can overload arithmetic operators in a class or record type, and at the global level. 
// The Syntax is as following:
//
//          // Overloading an operator as a class or record member.
//          static member (operator-symbols) (parameter-list) =
//              method-body
//          // Overloading an operator at the global level.
//          let [inline] (operator-symbols) parameter-list =
//              function-body
//
// Notes: Operator overloads for unary operators, such as + and -, must use a title (~) in the 
// operator-symbol to indicate that the operator is a unary operator and not a binary operator.
// ********************************************************************************************
// Reference: msdn.microsoft.com Microsoft F# Language Reference - Operator Overloading

open System

// Define a vector class and overloads the - and + operators for vector calculation.
type Vector (x: float, y: float) =
    // Define member data
    member this.x = x
    member this.y = y

    // Overload negate operator
    static member (~-) (v : Vector) =
        Vector (-1.0 * v.x, -1.0 * v.y)

    // Overload - operator
    static member (-) (v1 : Vector, v2 : Vector) =
        Vector (v1.x - v2.x, v1.y - v2.y)

    // Overload + operator
    static member (+) (v1 : Vector, v2 : Vector) =
        Vector (v1.x + v2.x, v1.y + v2.y)

    // Define Vecter ToString
    override this.ToString () = 
        this.x.ToString() + ", " + this.y.ToString()

// Demonstration. 
let v1 = Vector(1.0, 2.0)
let v2 = Vector(20.0, 10.0)

let v3 = v1 - v2
let v4 = v1 + v2

let v5 = - v2

printfn "Yifan Ge F# Phase-3."
printfn "v1 = [%s]" (v1.ToString())
printfn "v2 = [%s]" (v2.ToString())
printfn "v3 = v1 - v2 = [%s]" (v3.ToString())
printfn "v4 = v1 + v2 = [%s]" (v4.ToString())
printfn "v5 = -v2 = [%s]" (v5.ToString())


let name = Console.ReadLine()