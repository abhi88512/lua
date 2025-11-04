-- ============================================
-- 32: METATABLES (__NEWINDEX)
-- ============================================
-- __newindex is called when you try to SET a key that doesn't exist
-- It's the opposite of __index (which is for GETTING missing keys)

-- ============================================
-- __NEWINDEX BASICS
-- ============================================
-- __newindex runs when you try to assign to a key that doesn't exist

local protected = {}
local protected_mt = {
    __newindex = function(table, key, value)
        print("Trying to set " .. key .. " to " .. tostring(value))
        -- You can choose to allow it or block it
        rawset(table, key, value)  -- Actually set it (rawset bypasses metatable)
    end
}

setmetatable(protected, protected_mt)

protected.name = "Alice"  -- Prints: Trying to set name to Alice
print("Name:", protected.name)  -- Prints: Name: Alice

-- ============================================
-- PREVENTING ASSIGNMENTS
-- ============================================
-- You can use __newindex to prevent certain keys from being set

local read_only = {}
local read_only_mt = {
    __newindex = function(table, key, value)
        error("Cannot set " .. key .. " - this table is read-only!")
    end
}

setmetatable(read_only, read_only_mt)

read_only.name = "Alice"  -- ERROR! Cannot set name - this table is read-only!

-- ============================================
-- RAW SET AND RAW GET
-- ============================================
-- rawset() and rawget() bypass the metatable
-- Use them when you want to actually set/get values without triggering __newindex/__index

local example = {}
local example_mt = {
    __newindex = function(table, key, value)
        print("Setting", key)
        rawset(table, key, value)  -- Actually set it (bypasses metatable)
    end
}

setmetatable(example, example_mt)
example.x = 10  -- Prints: Setting x, and actually sets example.x = 10

