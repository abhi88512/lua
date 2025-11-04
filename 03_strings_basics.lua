-- ============================================
-- 03: STRING BASICS IN LUA
-- ============================================
-- Strings are sequences of characters
-- You can use single quotes, double quotes, or multiline strings

local string1 = "hello world"  -- Double quotes
local string2 = 'also working' -- Single quotes (both work!)
local string3 = [[
    This is a multiline string!
    You can write
    across multiple lines
    and Lua will preserve everything
]]

print("String 1:", string1)
print("String 2:", string2)
print("Multiline:", string3)

-- Note: Multiline strings with [[]] are handy for long text
-- But be careful - they conflict with multi-line comments!

