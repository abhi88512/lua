-- ============================================
-- 24: CLOSURES
-- ============================================
-- Closures are functions that "remember" variables from their outer scope
-- Inner functions can access outer function's variables
-- This is super powerful!

-- ============================================
-- BASIC CLOSURE
-- ============================================
local function outer_function()
    local outer_var = "I'm in the outer function"
    
    local function inner_function()
        print("Inner function can see:", outer_var)  -- Can access outer_var!
    end
    
    inner_function()
end

outer_function()

-- ============================================
-- PRACTICAL EXAMPLE: COUNTER WITH CLOSURE
-- ============================================
local function create_counter()
    local count = 0  -- This variable persists even after create_counter returns!
    
    return function()
        count = count + 1
        return count
    end
end

local counter = create_counter()
print("First call:", counter())  -- Prints: 1
print("Second call:", counter())  -- Prints: 2
print("Third call:", counter())  -- Prints: 3

-- The count variable is "closed over" by the returned function
-- It lives on even though create_counter has finished!

-- ============================================
-- MULTIPLE CLOSURES
-- ============================================
local counter1 = create_counter()
local counter2 = create_counter()

print("Counter 1:", counter1())  -- Prints: 1
print("Counter 1:", counter1())  -- Prints: 2
print("Counter 2:", counter2())  -- Prints: 1 (separate counter!)
print("Counter 1:", counter1())  -- Prints: 3

-- Each counter has its own separate count variable!
-- This is the power of closures - each function "remembers" its own state

