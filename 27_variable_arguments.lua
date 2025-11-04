-- ============================================
-- 27: VARIABLE ARGUMENTS (...)
-- ============================================
-- Sometimes you don't know how many arguments a function will get
-- That's where ... (three dots) comes in! It's called "variable arguments" or "varargs"

-- ============================================
-- USING VARIABLE ARGUMENTS
-- ============================================
-- Use ... in your function to accept any number of arguments

local function print_all(...)
    -- ... is a special value that represents all the arguments
    -- We can convert it to a table using {...}
    local args = {...}
    
    for i, value in ipairs(args) do
        print("Argument", i, ":", value)
    end
end

print_all("hello", "world", "!")
-- Prints:
-- Argument 1 : hello
-- Argument 2 : world
-- Argument 3 : !

-- ============================================
-- WORKING WITH VARIABLE ARGUMENTS
-- ============================================
-- You can use ... directly or convert it to a table

local function sum_all(...)
    local args = {...}
    local total = 0
    
    for i, num in ipairs(args) do
        total = total + num
    end
    
    return total
end

print("Sum:", sum_all(1, 2, 3, 4, 5))  -- Prints: Sum: 15

-- ============================================
-- RETURNING VARIABLE ARGUMENTS
-- ============================================
-- You can also return ... from a function

local function pass_through(...)
    return ...  -- Return all the arguments
end

local a, b, c = pass_through(1, 2, 3)
print("a:", a, "b:", b, "c:", c)  -- Prints: a: 1 b: 2 c: 3

-- ============================================
-- UNPACK FUNCTION
-- ============================================
-- unpack() (or table.unpack() in newer Lua) converts a table back to multiple values

local function return_all(...)
    local args = {...}
    return table.unpack(args)  -- Converts table back to multiple values
end

local first, second, third = return_all("hello", "world", "!")
print("First:", first, "Second:", second, "Third:", third)

