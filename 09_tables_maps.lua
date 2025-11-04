-- ============================================
-- 09: TABLES AS MAPS (DICTIONARIES)
-- ============================================
-- Tables can also work as key-value pairs (like dictionaries in Python)
-- Unlike lists, maps use custom keys (not just 1, 2, 3...)

-- ============================================
-- CREATING MAPS
-- ============================================
local t = {
    literal_key = "a string",           -- String key (literal)
    ["an expression"] = 'also works',   -- String key (expression)
    [123] = "number key",                -- Number key
    [function() end] = true              -- Function key (advanced!)
}

-- ============================================
-- ACCESSING MAP VALUES
-- ============================================
print("literal_key:", t.literal_key)              -- Dot notation (literal keys only)
print("an expression:", t["an expression"])        -- Bracket notation (any key)
print("number key:", t[123])                      -- Number key

-- ============================================
-- THE FUNCTION KEY MYSTERY
-- ============================================
print("function() end:", t[function() end])  
-- Prints: nil
-- 
-- WHY nil? Each function() end creates a NEW function!
-- The key is the first function, but you're trying to access with a different function
-- They're different objects in memory, so the key doesn't exist

-- SOLUTION: Store function in a variable
local myFunc = function() end
t[myFunc] = true
print("myFunc key:", t[myFunc])  -- Prints: true (now works!)

-- ============================================
-- DIFFERENT KEY TYPES
-- ============================================
local map = {
    -- String keys (most common)
    name = "Alice",
    age = 30,
    
    -- Number keys (also common)
    [100] = "one hundred",
    [42] = "the answer",
    
    -- Boolean keys (weird but possible)
    [true] = "truth",
    [false] = "lies",
    
    -- Table keys (very advanced, rarely used)
    -- [some_table] = "value"
}

print("name:", map.name)
print("age:", map.age)
print("[100]:", map[100])
print("[true]:", map[true])

-- ============================================
-- MODIFYING MAPS
-- ============================================
local person = {
    name = "Bob",
    age = 25
}

person.name = "Robert"        -- Change existing
person.city = "New York"      -- Add new key
person["country"] = "USA"     -- Add new key (alternative syntax)

print("Name:", person.name)
print("City:", person.city)
print("Country:", person.country)

-- ============================================
-- REMOVING FROM MAPS
-- ============================================
person.age = nil  -- Set to nil to remove
print("Age after removal:", person.age)  -- Prints: nil

-- ============================================
-- CHECKING IF KEY EXISTS
-- ============================================
if person.name ~= nil then
    print("Name exists:", person.name)
else
    print("Name doesn't exist")
end

-- ============================================
-- MIXED TABLES (Lists + Maps)
-- ============================================
-- You can mix both styles in one table!
local mixed = {
    "first",           -- List element (index 1)
    "second",          -- List element (index 2)
    name = "Alice",    -- Map element (key: "name")
    age = 30           -- Map element (key: "age")
}

print("mixed[1]:", mixed[1])           -- Prints: first
print("mixed.name:", mixed.name)       -- Prints: Alice
print("mixed.length:", #mixed)         -- Prints: 2 (only counts list part!)

-- ============================================
-- IMPORTANT NOTES
-- ============================================
-- 1. String keys that are valid identifiers can use dot notation (person.name)
-- 2. Other keys MUST use bracket notation (person["an expression"])
-- 3. Tables are the ONLY collection type in Lua - they're very flexible!
-- 4. Mixing list and map parts can be confusing - use with care!

