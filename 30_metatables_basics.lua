-- ============================================
-- 30: METATABLES (BASICS)
-- ============================================
-- Metatables let you change how tables behave
-- Think of them as "instruction manuals" for tables
-- They're powerful but can be a bit tricky at first!

-- ============================================
-- SETMETATABLE
-- ============================================
-- To give a table a metatable, use setmetatable()

local my_table = {}
local my_metatable = {}

setmetatable(my_table, my_metatable)  -- Now my_table has a metatable!

-- The metatable controls what happens when you do certain things to the table
-- Like: accessing a key that doesn't exist, adding two tables together, etc.

-- ============================================
-- __INDEX (THE MOST COMMON ONE)
-- ============================================
-- __index is called when you try to access a key that doesn't exist in the table

local person = {}
local person_mt = {
    __index = function(table, key)
        if key == "name" then
            return "Unknown"
        elseif key == "age" then
            return 0
        else
            return nil
        end
    end
}

setmetatable(person, person_mt)

print("Name:", person.name)  -- Prints: Name: Unknown (even though person.name doesn't exist!)
print("Age:", person.age)    -- Prints: Age: 0

-- The __index function runs when you try to access a missing key!

-- ============================================
-- __INDEX WITH ANOTHER TABLE
-- ============================================
-- You can also use __index to point to another table (like inheritance!)

local defaults = { color = "red", size = 10 }
local my_settings = {}

setmetatable(my_settings, { __index = defaults })

print("Color:", my_settings.color)  -- Prints: Color: red (from defaults!)
print("Size:", my_settings.size)    -- Prints: Size: 10 (from defaults!)

-- If my_settings doesn't have a key, it looks in defaults!

