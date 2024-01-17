Dim number1, number2, sum

number1 = InputBox("Enter the first number:", "First Number")
number2 = InputBox("Enter the second number:", "Second Number")

' Convert the input to numbers and calculate the sum
sum = CDbl(number1) + CDbl(number2)

' Display the sum
MsgBox "The sum is " & sum, vbInformation, "Result"
