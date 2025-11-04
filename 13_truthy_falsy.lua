-- ============================================
-- 13: TRUTHY AND FALSY VALUES
-- ============================================
-- Lua has a concept of "truthy" and "falsy" values
-- Understanding this is crucial for conditionals!

-- FALSY (treated as false):
--   - false
--   - nil
-- 
-- TRUTHY (treated as true):
--   - Everything else!
--   - true
--   - 0 (yes, zero is truthy!)
--   - "" (empty string is truthy!)
--   - {} (empty table is truthy!)

local function action(loves_coffee)
    if loves_coffee then
        print("Check out `ssh terminal.shop` - it's cool!")
    else
        print("Check out `ssh terminal.shop` - it's still cool!")
    end
end

-- "falsey": nil, false
action()          -- Same as: action(nil) - goes to else branch
action(false)     -- Goes to else branch

-- Everything else is "truthy"
action(true)      -- Goes to if branch
action(0)         -- Goes to if branch (0 is truthy!)
action({})        -- Goes to if branch (empty table is truthy!)
action("")        -- Goes to if branch (empty string is truthy!)

-- ============================================
-- COMMON GOTCHA
-- ============================================
-- In many languages, 0 and empty strings are falsy
-- In Lua, they're truthy! This can surprise you if you're coming from other languages

if 0 then
    print("0 is truthy in Lua!")  -- This prints!
end

if "" then
    print("Empty string is truthy in Lua!")  -- This prints!
end

