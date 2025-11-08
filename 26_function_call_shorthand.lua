-- ============================================
-- 28: FUNCTION CALL SHORTHAND
-- ============================================
-- Lua has some shortcuts for calling functions
-- These make your code cleaner and easier to read!

-- ============================================
-- STRING SHORTHAND
-- ============================================
-- If a function takes only one string argument, you can skip the parentheses!

local function greet(name)
    return "Hello, " .. name .. "!"
end

-- Normal way (with parentheses):
local x = greet("Alice")

-- Shorthand way (no parentheses needed!):
local y = greet "Alice"

print(x, y)  -- Both print: Hello, Alice!

-- This only works when:
-- - The function takes exactly ONE argument
-- - That argument is a string

-- ============================================
-- TABLE SHORTHAND
-- ============================================
-- If a function takes only one table argument, you can skip the parentheses!

local function setup(opts)
    if opts.default == nil then
        opts.default = 17
    end
    print("Default:", opts.default, "Other:", opts.other)
end

-- Normal way (with parentheses):
setup({ default = 12, other = false })

-- Shorthand way (no parentheses needed!):
setup { default = 12, other = true }

-- This makes function calls with table options look cleaner!
-- You'll see this pattern a lot in Lua code

-- ============================================
-- WHEN TO USE SHORTHAND
-- ============================================
-- Shorthand is optional - you can always use parentheses
-- Use it when it makes your code more readable
-- Don't use it if it makes your code confusing!

