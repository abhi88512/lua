-- ============================================
-- 25: STRING METHODS
-- ============================================
-- Lua provides useful string methods for working with text
-- These are part of the string library

-- ============================================
-- STRING REPETITION
-- ============================================
-- Lua doesn't have built-in string repetition operator, but you can use string.rep()
local repeated = string.rep("na ", 3) .. "Batman!"
print(repeated)  -- Prints: na na na Batman!

-- ============================================
-- STRING PATTERNS (BASIC)
-- ============================================
-- Lua uses patterns (similar to regex but simpler)
-- These are powerful for finding and replacing text

local text = "Hello World"

-- Find a substring
local found = string.find(text, "World")
print("Found 'World' at position:", found)  -- Prints: 7

-- Replace (Global Substitution)
local replaced = string.gsub(text, "World", "Lua")
print("Replaced:", replaced)  -- Prints: Hello Lua

-- Note: Lua patterns are powerful but different from regex
-- We'll keep it simple for now!
-- 
-- Key differences from regex:
-- - % instead of \ for escaping
-- - Simpler pattern matching
-- - More limited but still useful

