-- ============================================
-- 07: HIGHER-ORDER FUNCTIONS
-- ============================================
-- Higher-order functions are functions that:
-- 1. Take other functions as arguments, OR
-- 2. Return functions as results
-- 
-- Sounds fancy, but it's actually pretty cool once you get it!

-- ============================================
-- FUNCTIONS THAT RETURN FUNCTIONS
-- ============================================
-- This is like a function factory - it creates new functions!

local higher_order = function(value)
    -- This function returns another function
    return function(another)
        return value + another
    end
end

-- Create a function that adds 1 to any number
local add_1 = higher_order(1)
print("add_1(2) ->", add_1(2))  -- Prints: add_1(2) -> 3
print("add_1(5) ->", add_1(5))  -- Prints: add_1(5) -> 6

-- Create a function that adds 10 to any number
local add_10 = higher_order(10)
print("add_10(3) ->", add_10(3))  -- Prints: add_10(3) -> 13

-- ============================================
-- WHY IS THIS USEFUL?
-- ============================================
-- Let's say you want to create multiple similar functions:

local function make_multiplier(factor)
    return function(number)
        return number * factor
    end
end

local double = make_multiplier(2)
local triple = make_multiplier(3)

print("double(5) =", double(5))   -- Prints: double(5) = 10
print("triple(5) =", triple(5))   -- Prints: triple(5) = 15

-- ============================================
-- CLOSURES (The Secret Sauce)
-- ============================================
-- Notice how the returned function "remembers" the value from the outer function?
-- That's called a closure - the inner function "closes over" the outer function's variables

local function create_counter()
    local count = 0  -- This variable is "captured" by the closure
    
    return function()
        count = count + 1
        return count
    end
end

local counter1 = create_counter()
local counter2 = create_counter()

print("Counter 1:", counter1())  -- Prints: Counter 1: 1
print("Counter 1:", counter1())  -- Prints: Counter 1: 2
print("Counter 2:", counter2())  -- Prints: Counter 2: 1 (separate counter!)
print("Counter 1:", counter1())  -- Prints: Counter 1: 3

-- Each counter has its own separate count variable!
-- This is the power of closures - each function "remembers" its own state

-- ============================================
-- FUNCTIONS THAT TAKE FUNCTIONS AS ARGUMENTS
-- ============================================
local function apply_operation(x, y, operation)
    return operation(x, y)
end

local add = function(a, b) return a + b end
local multiply = function(a, b) return a * b end

print("apply_operation(5, 3, add):", apply_operation(5, 3, add))         -- Prints: 8
print("apply_operation(5, 3, multiply):", apply_operation(5, 3, multiply))  -- Prints: 15

-- This pattern is super common in programming!
-- You'll see it with map, filter, reduce, and other useful functions

