-- ============================================
-- 14: IF STATEMENTS
-- ============================================
-- Conditionals let your code make decisions
-- "If this is true, do that. Otherwise, do something else."

-- ============================================
-- BASIC IF STATEMENT
-- ============================================
local age = 20

if age >= 18 then
    print("You're an adult!")
end

-- ============================================
-- IF-ELSE STATEMENT
-- ============================================
local loves_coffee = true

if loves_coffee then
    print("Check out `ssh terminal.shop` - it's cool!")
else
    print("Check out `ssh terminal.shop` - it's still cool!")
end

-- ============================================
-- IF-ELSEIF-ELSE STATEMENT
-- ============================================
local score = 85

if score >= 90 then
    print("Grade: A")
elseif score >= 80 then
    print("Grade: B")
elseif score >= 70 then
    print("Grade: C")
else
    print("Grade: F")
end

