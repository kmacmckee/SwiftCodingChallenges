//Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

//Swift 5
func descendingOrder(of number: Int) -> Int {
    let numberString = String(number)
    let digitsArray = numberString.compactMap({ $0.wholeNumberValue })
    let descendingDigits = Array(digitsArray.sorted().reversed())
    let descendingNumber = descendingDigits.reduce(0, {$0*10 + $1})
    return descendingNumber
}
descendingOrder(of: 21445)
descendingOrder(of: 145263)
descendingOrder(of: 1254859723)

