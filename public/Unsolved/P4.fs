// CSCI 208 Term Project F# - Phase 4
// Yifan Ge
// 3/23/2012

// This program is designed to demonstrating the list(sequence) comprehensions in F#.
// List comprehensions refers to special syntactic in some languages used for generating lists based on existing lists.
// F# has an expressive list comprehension syntax, which comes in two forms, ranges and generators.

// Rangers have the constructs [start .. end] and [start .. step .. end]. Example:

// 1-10
let numbers = [1 .. 10]
printfn "%A" numbers // Print all elements

// 1-10 odd numbers
let oddNumbers = [1 .. 2 .. 10]
printfn "%A" oddNumbers

// a-h
let charList = ['a' .. 'h']
printfn "%A" charList

// Generators have the construct [for x in collection do ... yield expr], 
// and they are much more flexible than ranges. Examples:

// squared 1-10
let numSquared = 
    [for a in numbers do 
        yield (a * a)]
printfn "%A" numSquared

// vectors with x = 1-3, y = 1-3
let vectors = 
    [for a in 1 .. 3 do
     for b in 1 .. 3 do
        yield (a, b)]
printfn "%A" vectors

// numbers can be divided by 15 in 1-100
let fifteenNum =
    [for a in 1 .. 100 do
     if a%3 = 0 && a%5 = 0 then yield a]
printfn "%A" fifteenNum

// 'yield' keyword pushes a single value into a list.
// 'yield!' keyword pushes a collection of values into the list. Example:
let aStringList =
    [for a in 1 .. 5 do
        match a with
        | 3 -> yield! ["hello"; "world"]
        | _ -> yield a.ToString()]
printfn "%A" aStringList

//*******************************************************************************************
// List Comprehension Example: Reverse a List
//*******************************************************************************************

let reverse l = 
    let rec loop acc = function
        | [] -> acc                         // when l = [], yield acc
        | hd :: t1 -> loop (hd :: acc) t1   // when l \= [], add hd to acc, and recursively call reverse of the remainder.
    loop [] l
// 'acc' is an accumulating parameter which holds the new list as we generate it.
// 'loop' is a nested function to hide the implementation details of the function form clients.

let revNum = reverse numbers
printfn "%A" revNum

(* References: 
    1. en.wikibooks.org/wiki/F_Sharp_Programming/Lists
    2. http://tomasp.net/blog
    3. msdn.microsoft.com Microsoft F# Language Reference
*)

