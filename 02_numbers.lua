-- ============================================
-- 02: NUMBERS IN LUA
-- ============================================
-- Numbers in Lua are simple - no separate int and float types!
-- Lua uses just "number" which can be either (usually double precision)

local num = 5
local float = 3.14
local negative = -42
local scientific = 1e10  -- 10000000000 (exponential notation)

print("Number:", num)
print("Float:", float)
print("Negative:", negative)
print("Scientific:", scientific)

-- Fun fact: Lua doesn't have separate int and float types
-- It uses just "number" which can be either (usually double precision)
-- This makes things simpler - no worrying about integer vs float!

