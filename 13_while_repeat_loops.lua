-- ============================================
-- 13: WHILE AND REPEAT-UNTIL LOOPS
-- ============================================
-- While and repeat-until loops repeat code until a condition is met
-- Use them when you don't know exactly how many iterations you need

-- ============================================
-- WHILE LOOP
-- ============================================
-- Repeats while condition is true
-- Might not run at all if condition is false initially

local count = 0
while count < 5 do
    count = count + 1
    print("While loop count:", count)
end
-- Prints: 1, 2, 3, 4, 5

-- ============================================
-- REPEAT-UNTIL LOOP
-- ============================================
-- Repeats until condition is true
-- Always runs at least once (checks condition at the end)

local i = 0
repeat
    i = i + 1
    print("Repeat count:", i)
until i >= 5
-- Prints: 1, 2, 3, 4, 5

-- ============================================
-- DIFFERENCE: WHILE VS REPEAT-UNTIL
-- ============================================
-- while: Checks condition BEFORE each iteration
--   - Might not run if condition is false initially
--   - Use when you want to check before running

-- repeat-until: Checks condition AFTER each iteration
--   - Always runs at least once
--   - Use when you want to run at least once, then check

-- Example: Getting user input (need to run at least once)
local user_input = ""
repeat
    -- In real code, you'd get input here
    user_input = "valid"  -- Simulating valid input
    print("Got input:", user_input)
until user_input ~= ""  -- Runs at least once, then checks

