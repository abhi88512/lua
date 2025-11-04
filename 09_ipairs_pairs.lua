-- ============================================
-- 09: IPAIRS AND PAIRS
-- ============================================
-- ipairs and pairs are iterators for tables
-- They're cleaner than numeric for loops for iterating collections

-- ============================================
-- ITERATING LISTS WITH IPAIRS
-- ============================================
-- ipairs is specifically for lists (arrays with sequential numeric indices)

local favorite_accounts = { "teej_dv", "ThePrimeagen", "terminaldotshop" }

for index, value in ipairs(favorite_accounts) do
    print(index, value)
end
-- Prints:
-- 1  teej_dv
-- 2  ThePrimeagen
-- 3  terminaldotshop

-- ipairs is cleaner and stops at the first nil value
-- It's the preferred way to iterate lists

-- ============================================
-- ITERATING MAPS WITH PAIRS
-- ============================================
-- pairs() works for ANY table (lists or maps)
-- It iterates all key-value pairs

local person = {
    name = "Alice",
    age = 30,
    city = "Tokyo"
}

for key, value in pairs(person) do
    print(key, "->", value)
end
-- Prints (order may vary):
-- name -> Alice
-- age -> 30
-- city -> Tokyo

-- ============================================
-- IPAIRS VS PAIRS
-- ============================================
local mixed = {
    "first",      -- index 1
    "second",     -- index 2
    name = "Alice",
    age = 30
}

print("Using ipairs (only sequential indices):")
for i, v in ipairs(mixed) do
    print(i, v)
end
-- Prints:
-- 1  first
-- 2  second
-- (stops here - only sequential part)

print("Using pairs (all key-value pairs):")
for k, v in pairs(mixed) do
    print(k, v)
end
-- Prints (order may vary):
-- 1  first
-- 2  second
-- name  Alice
-- age  30

