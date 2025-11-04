-- ============================================
-- 20: TYPE OPERATOR
-- ============================================
-- type() returns the type of a value as a string
-- This is super useful for debugging and checking values

print("type(5):", type(5))              -- Prints: number
print("type('hello'):", type("hello"))  -- Prints: string
print("type(true):", type(true))        -- Prints: boolean
print("type(nil):", type(nil))          -- Prints: nil
print("type({}):", type({}))            -- Prints: table
print("type(function() end):", type(function() end))  -- Prints: function

-- ============================================
-- PRACTICAL USES
-- ============================================
-- Check type before operations
local value = 42

if type(value) == "number" then
    print("It's a number, let's do math:", value * 2)
else
    print("Not a number!")
end

-- Handle different types
local function process(value)
    if type(value) == "string" then
        print("Processing string:", value)
    elseif type(value) == "number" then
        print("Processing number:", value)
    elseif type(value) == "table" then
        print("Processing table with", #value, "items")
    else
        print("Unknown type:", type(value))
    end
end

process("hello")
process(42)
process({1, 2, 3})

