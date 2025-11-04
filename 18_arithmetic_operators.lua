-- ============================================
-- 18: ARITHMETIC OPERATORS
-- ============================================
-- Arithmetic operators perform mathematical operations
-- They work with numbers (obviously!)

local a = 10
local b = 3

print("a =", a, "b =", b)
print("a + b =", a + b)   -- Addition: 13
print("a - b =", a - b)   -- Subtraction: 7
print("a * b =", a * b)   -- Multiplication: 30
print("a / b =", a / b)   -- Division: 3.333... (always returns float)
print("a // b =", a // b) -- Floor division: 3 (integer division, Lua 5.3+)
print("a % b =", a % b)   -- Modulo (remainder): 1
print("a ^ b =", a ^ b)   -- Exponentiation: 1000 (10 to the power of 3)

-- ============================================
-- OPERATOR PRECEDENCE
-- ============================================
-- Operations happen in a specific order
-- (like math: multiplication before addition)

local result = 2 + 3 * 4  -- Same as: 2 + (3 * 4) = 2 + 12 = 14
print("2 + 3 * 4 =", result)

-- Use parentheses to change order
local result2 = (2 + 3) * 4  -- Same as: 5 * 4 = 20
print("(2 + 3) * 4 =", result2)

-- Order of operations (PEMDAS):
-- Parentheses
-- Exponentiation (^)
-- Multiplication, Division, Floor Division, Modulo (*, /, //, %)
-- Addition, Subtraction (+, -)

