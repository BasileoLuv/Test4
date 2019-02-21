import unittest
from calc.calculator import Calculator


class TestCalculator(unittest.TestCase):
    def test_add(self):
        self.assertEqual(Calculator.add(2, 2), 4)
        self.assertNotEqual(Calculator.add(2, 2), -4)
        self.assertEqual(Calculator.add(1, 2.2), 3.2)
        self.assertEqual(Calculator.add(-3, -3), -6)

    def test_sub(self):
        self.assertEqual(Calculator.sub(3, 1), 2)
        self.assertEqual(Calculator.sub(-3, -3), 0)
        self.assertEqual(Calculator.sub(1, 3), -2)

    def test_mul(self):
        self.assertEqual(Calculator.mul(3, 4), 12)
        self.assertEqual(Calculator.mul(3, 0), 0)
        self.assertEqual(Calculator.mul(3, 4.5), 13.5)

    def test_div(self):
        self.assertEqual(Calculator.div(9, 3), 3)
        self.assertEqual(Calculator.div(16, 4), 4)


if __name__ == '__main__':
    unittest.main()
