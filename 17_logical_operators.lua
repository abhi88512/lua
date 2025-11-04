-- ============================================
-- 17: LOGICAL OPERATORS
-- ============================================
-- Logical operators combine boolean values
-- and, or, not work with truthy/falsy values

-- and  (returns first falsy value or last value)
-- or   (returns first truthy value or last value)
-- not  (returns opposite boolean)

local x = true
local y = false

-- ============================================
-- AND OPERATOR
-- ============================================
print("x and y:", x and y)  -- Returns: false (first falsy value)
print("true and 'hello':", true and "hello")  -- Returns: "hello" (both truthy, returns last)
print("false and 'hello':", false and "hello")  -- Returns: false (first falsy)

if x and y then
    print("Both true")  -- Won't print
else
    print("At least one is false")  -- Will print
end

-- ============================================
-- OR OPERATOR
-- ============================================
print("x or y:", x or y)  -- Returns: true (first truthy value)
print("true or 'hello':", true or "hello")  -- Returns: true (first truthy)
print("false or 'hello':", false or "hello")  -- Returns: "hello" (first truthy)

if x or y then
    print("At least one is true")  -- Will print
end

-- ============================================
-- NOT OPERATOR
-- ============================================
print("not y:", not y)  -- Returns: true (opposite of false)

if not y then
    print("y is false, so not y is true")  -- Will print
end

-- ============================================
-- PRACTICAL USES
-- ============================================
-- Default values with or
local name = nil
local display_name = name or "Anonymous"  -- If name is nil, use "Anonymous"
print("display_name:", display_name)  -- Prints: Anonymous

-- Shorthand if (ternary alternative)
local age = 20
local status = (age >= 18) and "adult" or "minor"
print("Status:", status)  -- Prints: adult

-- How it works:
-- If age >= 18 is true, and returns "adult"
-- If age >= 18 is false, and returns false, then or returns "minor"

