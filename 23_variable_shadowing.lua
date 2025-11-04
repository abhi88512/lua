-- ============================================
-- 23: VARIABLE SHADOWING
-- ============================================
-- When a local variable has the same name as an outer variable,
-- the inner one "shadows" (hides) the outer one
-- This can be confusing, so be careful!

local outer = "I'm outside"

local function shadow_example()
    local outer = "I'm inside"  -- This shadows the outer variable
    print("Inside function:", outer)  -- Prints: I'm inside
end

shadow_example()
print("Outside function:", outer)  -- Prints: I'm outside (unchanged!)

-- ============================================
-- NESTED SHADOWING
-- ============================================
local function confusing()
    local x = 10
    if true then
        local x = 20  -- This shadows the outer x!
        print("Inner x:", x)  -- 20
    end
    print("Outer x:", x)  -- 10
end

confusing()

-- ============================================
-- AVOIDING SHADOWING
-- ============================================
-- Use different variable names to avoid confusion
local function clear_example()
    local outer_value = "I'm outside"
    if true then
        local inner_value = "I'm inside"
        print("Outer:", outer_value, "Inner:", inner_value)
    end
end

clear_example()

