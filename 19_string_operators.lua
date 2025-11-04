-- ============================================
-- 19: STRING OPERATORS
-- ============================================
-- String operators work with text
-- The main one is concatenation (joining strings)

-- ============================================
-- STRING CONCATENATION (..)
-- ============================================
-- Use .. (two dots) to join strings together

local str1 = "Hello"
local str2 = "World"
print("Concatenation:", str1 .. " " .. str2)  -- Prints: Hello World

-- Numbers get converted to strings automatically
local num = 42
print("Number + string:", "The answer is " .. num)  -- Prints: The answer is 42

-- You can chain multiple concatenations
local greeting = "Hello"
local name = "Alice"
local message = greeting .. ", " .. name .. "!"
print(message)  -- Prints: Hello, Alice!

-- ============================================
-- COMMON GOTCHA
-- ============================================
-- Don't use + for string concatenation (that's for numbers!)
-- local wrong = "Hello" + "World"  -- ERROR! This will cause an error

-- Always use .. for strings
local correct = "Hello" .. "World"
print(correct)  -- Prints: HelloWorld

