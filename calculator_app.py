from calc.calculator import Calculator
import sys
x = float(sys.argv[1])
d = sys.argv[2]
y = float(sys.argv[3])

if d == '+':
    print(Calculator.add(x, y))
if d == '-':
    print(Calculator.sub(x, y))
if d == '*':
    print(Calculator.mul(x, y))
if d == '/':
    print(round(Calculator.div(x, y), 2))
