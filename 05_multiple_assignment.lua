-- ============================================
-- 05: MULTIPLE ASSIGNMENT
-- ============================================
-- Lua lets you assign multiple values at once!
-- This is super handy for swapping and unpacking

local truth, lies = true, false  -- Assign multiple values at once!

local a, b, c = 1, 2, 3
print("Multiple assignment:", a, b, c)

-- Swap values easily (no temp variable needed!)
local x, y = 10, 20
x, y = y, x  -- Now x = 20, y = 10
print("After swap - x:", x, "y:", y)

-- If you assign more values than variables, extras are ignored
local first, second = 1, 2, 3, 4, 5
print("First:", first, "Second:", second)  -- Only gets 1 and 2

-- If you assign fewer values than variables, extras get nil
local a, b, c = 1, 2
print("a:", a, "b:", b, "c:", c)  -- c is nil

