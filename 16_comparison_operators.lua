-- ============================================
-- 16: COMPARISON OPERATORS
-- ============================================
-- Comparison operators compare values and return true or false
-- They're used in conditionals to make decisions

-- ==  (equals)
-- ~=  (not equals - note: it's ~= not !=)
-- <   (less than)
-- >   (greater than)
-- <=  (less than or equal)
-- >=  (greater than or equal)

local a = 5
local b = 10
local c = 5

print("a == b:", a == b)  -- Equals: false
print("a ~= b:", a ~= b)  -- Not equals: true (note: ~= not !=)
print("a == c:", a == c)  -- Equals: true
print("a < b:", a < b)    -- Less than: true
print("a > b:", a > b)    -- Greater than: false
print("a <= c:", a <= c)  -- Less than or equal: true
print("a >= c:", a >= c)  -- Greater than or equal: true

-- ============================================
-- USING IN CONDITIONALS
-- ============================================
if a == c then
    print("a equals c")
elseif a ~= b then
    print("a does not equal b")  -- This will print
end

if a < b then
    print("a is less than b")  -- This will print
end

-- ============================================
-- STRING AND TABLE COMPARISON
-- ============================================
local s1 = "hello"
local s2 = "hello"
print("Strings equal?", s1 == s2)  -- Prints: true (compares by value)

local t1 = {1, 2, 3}
local t2 = {1, 2, 3}
print("Tables equal?", t1 == t2)  -- Prints: false (compares by reference!)

-- Tables are compared by reference, not by value
-- Even if they have the same contents, they're different objects

