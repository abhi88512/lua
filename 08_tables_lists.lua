-- ============================================
-- 08: TABLES AS LISTS (ARRAYS)
-- ============================================
-- In Lua, tables are the ONLY data structure for collections
-- They can be used as:
-- 1. Lists/Arrays (sequential, indexed by numbers)
-- 2. Maps/Dictionaries (key-value pairs)
-- 
-- Think of tables as flexible containers that can be either!

-- ============================================
-- CREATING LISTS
-- ============================================
-- Tables are 1-indexed (not 0-indexed like many languages!)
-- This means the first element is at index 1, not 0

local list = {"first", 2, false, function() print("Func from list!") end}

print("1-indexed:", list[1])  -- Prints: first (NOT list[0]!)

-- ============================================
-- HETEROGENEOUS ARRAYS
-- ============================================
-- Unlike many languages, Lua lists can contain different types!
local mixed_list = {
    "string",
    42,
    true,
    false,
    function() print("I'm a function!") end,
    { nested = "table" }  -- Yes, tables can contain other tables!
}

print("Mixed list[1]:", mixed_list[1])
print("Mixed list[2]:", mixed_list[2])
print("Mixed list[3]:", mixed_list[3])

-- ============================================
-- ACCESSING ELEMENTS
-- ============================================
local fruits = {"apple", "banana", "cherry"}

print("First fruit:", fruits[1])   -- Prints: apple
print("Second fruit:", fruits[2])  -- Prints: banana
print("Third fruit:", fruits[3])   -- Prints: cherry

-- ============================================
-- FUNCTIONS IN LISTS
-- ============================================
local list = {"first", 2, false, function() print("Func from list!") end}

print("4th Value:", list[4]())  
-- Why does "Func from list!" print BEFORE "4th Value:"?
-- 
-- ANSWER:
-- list[4]() = CALLS the function immediately
-- print() displays the return value
-- function returns nil, so nil is printed
-- ORDER: function runs → prints "Func from list!" → returns nil → print shows nil

print("4th Value (function itself):", list[4])  -- Prints address (function reference)

-- To store the function without calling it:
local my_func = list[4]  -- Store reference
my_func()  -- Call it later

-- ============================================
-- LIST LENGTH
-- ============================================
-- Use # operator to get length of a list
local items = {"a", "b", "c", "d", "e"}
print("Length:", #items)  -- Prints: 5

-- ============================================
-- MODIFYING LISTS
-- ============================================
local numbers = {10, 20, 30}
numbers[1] = 100  -- Change existing element
numbers[4] = 40   -- Add new element
print("After modification:", numbers[1], numbers[2], numbers[3], numbers[4])

-- ============================================
-- INSERTING AND REMOVING
-- ============================================
local list = {1, 2, 3}
table.insert(list, 4)        -- Add to end
table.insert(list, 1, 0)      -- Insert at position 1 (shifts others)
print("After insert:", list[1], list[2], list[3], list[4], list[5])

table.remove(list, 1)        -- Remove element at position 1
print("After remove:", list[1], list[2], list[3], list[4])

-- ============================================
-- EMPTY LISTS
-- ============================================
local empty = {}
print("Empty list length:", #empty)  -- Prints: 0

