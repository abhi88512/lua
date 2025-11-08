-- ============================================
-- 26: MODULES
-- ============================================
-- Modules are just files that you can load into other files
-- They let you organize your code and reuse functions across files
-- Think of modules as toolboxes - you can grab tools (functions) from them!

-- ============================================
-- CREATING A MODULE
-- ============================================
-- To create a module, you:
-- 1. Create a table to hold your functions
-- 2. Add functions to the table
-- 3. Return the table

-- This is what a module file looks like (save it as "my_module.lua"):
--[[
local M = {}  -- M stands for "Module" (just a convention)

M.greet = function(name)
    print("Hello, " .. name .. "!")
end

M.add = function(a, b)
    return a + b
end

return M  -- Return the table so other files can use it
--]]

-- ============================================
-- USING A MODULE (REQUIRE)
-- ============================================
-- To use a module, you use require()
-- require() loads the file and returns whatever that file returns

-- If you have a file called "my_module.lua" that returns a table:
--[[
local my_module = require("my_module")

-- Now you can use functions from the module!
my_module.greet("Alice")
local sum = my_module.add(5, 3)
print("Sum:", sum)
--]]

-- ============================================
-- HOW REQUIRE WORKS
-- ============================================
-- When you call require("my_module"), Lua:
-- 1. Looks for a file called "my_module.lua"
-- 2. Runs the code in that file
-- 3. Returns whatever the file returns (usually a table)
-- 4. Caches the result (so if you require it again, it uses the cached version)

-- Modules are super useful for organizing code!
-- Instead of having everything in one huge file, you can split it into modules

