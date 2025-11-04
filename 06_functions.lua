-- ============================================
-- 06: FUNCTIONS IN LUA
-- ============================================
-- Functions are reusable blocks of code
-- They're like recipes: give them ingredients (parameters), get a result (return value)

-- ============================================
-- FUNCTION DECLARATION (Named Function)
-- ============================================
local function hello(name)
    print("Hello!", name)
end

-- Call the function
hello("Abhilash")  -- Prints: Hello! Abhilash

-- ============================================
-- FUNCTION EXPRESSION (Anonymous Function)
-- ============================================
local greet = function(name)
    print("Greetings, " .. name .. "!")  -- .. is string concatenation
end

greet("Abhilash")  -- Prints: Greetings, Abhilash!

-- Both styles work the same way!
-- Named functions are slightly faster (but you won't notice the difference)

-- ============================================
-- FUNCTIONS WITH PARAMETERS
-- ============================================
local function add(a, b)
    return a + b
end

local result = add(5, 3)
print("5 + 3 =", result)  -- Prints: 5 + 3 = 8

-- Functions can take any number of parameters
local function introduce(name, age, city)
    print(name .. " is " .. age .. " years old and lives in " .. city)
end

introduce("Alice", 25, "Tokyo")

-- ============================================
-- FUNCTIONS WITH RETURN VALUES
-- ============================================
local function multiply(x, y)
    return x * y
end

local product = multiply(4, 7)
print("4 * 7 =", product)  -- Prints: 4 * 7 = 28

-- Functions can return multiple values!
local function divide_and_remainder(a, b)
    return a / b, a % b  -- Returns quotient and remainder
end

local quotient, remainder = divide_and_remainder(17, 5)
print("17 / 5 =", quotient, "remainder", remainder)  -- Prints: 17 / 5 = 3.4 remainder 2

-- ============================================
-- MULTIPLE RETURNS - WHAT HAPPENS?
-- ============================================
-- If a function returns more values than you capture, the extras are discarded
local function returns_four()
    return 1, 2, 3, 4
end

local first, second, last = returns_four()
print("first:", first)   -- Prints: first: 1
print("second:", second) -- Prints: second: 2
print("last:", last)    -- Prints: last: 3 (the 4 is discarded!)

-- If a function returns fewer values than you expect, extras get nil
local function returns_one()
    return 1
end

local a, b, c = returns_one()
print("a:", a, "b:", b, "c:", c)  -- Prints: a: 1 b: nil c: nil

-- ============================================
-- FUNCTIONS WITHOUT PARAMETERS
-- ============================================
local function say_hi()
    print("Hi there!")
end

say_hi()  -- Prints: Hi there!

-- ============================================
-- FUNCTIONS AS FIRST-CLASS CITIZENS
-- ============================================
-- Functions can be stored in variables, passed as arguments, returned from functions
-- This makes them "first-class" - they're treated like any other value

local my_function = function() return "I'm a function!" end
local stored = my_function  -- Store function in another variable
print(stored())  -- Prints: I'm a function!

