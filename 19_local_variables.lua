-- ============================================
-- 19: LOCAL VARIABLES
-- ============================================
-- local variables are only accessible within the block where they're defined
-- A "block" is usually a function, loop, or if statement
-- Always use "local" unless you specifically need a global variable!

local function my_function()
    local x = 10  -- This variable only exists inside my_function
    print("Inside function, x =", x)
end

my_function()
-- print(x)  -- ERROR! x doesn't exist here

-- ============================================
-- BLOCK SCOPE
-- ============================================
-- Variables are scoped to the block (function, loop, if, etc.)

if true then
    local block_var = "I only exist in this if block"
    print("Inside if:", block_var)
end
-- print(block_var)  -- ERROR! block_var doesn't exist here

-- ============================================
-- LOOPS AND SCOPE
-- ============================================
for i = 1, 3 do
    local loop_var = "iteration " .. i
    print("Inside loop:", loop_var)
end
-- print(loop_var)  -- ERROR! loop_var doesn't exist here

-- Loop variable (i) is also scoped to the loop
-- print(i)  -- ERROR! i doesn't exist here

-- ============================================
-- BEST PRACTICE
-- ============================================
-- Always use "local" unless you specifically need a global variable
local good = "This is good"
-- bad = "This is bad (global)"  -- Avoid unless necessary!

