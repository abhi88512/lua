-- ============================================
-- 22: GLOBAL VARIABLES
-- ============================================
-- Variables without "local" are global (accessible everywhere)
-- WARNING: Global variables can cause bugs! Use local when possible.

-- Global variable (no "local" keyword)
global_var = "I'm accessible everywhere!"

local function access_global()
    print("Inside function, global_var =", global_var)  -- Can access it!
end

access_global()
print("Outside function, global_var =", global_var)  -- Can access it too!

-- ============================================
-- GLOBAL VARIABLES IN PRACTICE
-- ============================================
-- Sometimes you DO need global variables
-- For example, Lua's built-in functions are global:

print("Hello")  -- print is a global function
type({})        -- type is a global function

-- You can also create your own globals (but be careful!)
_G.my_global = "I'm in the global table"
print("Global:", _G.my_global)  -- _G is the global environment

-- ============================================
-- WHEN TO USE GLOBALS
-- ============================================
-- Use globals sparingly:
-- - Configuration settings
-- - Shared state (be very careful!)
-- - Built-in functions (already global)

-- For most cases, use local variables instead!

