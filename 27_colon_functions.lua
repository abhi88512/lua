-- ============================================
-- 29: COLON FUNCTIONS (METHOD SYNTAX)
-- ============================================
-- Colon functions are a special way to write functions that work with tables
-- They automatically pass the table as the first argument (called "self")

-- ============================================
-- DOT VS COLON
-- ============================================
-- There are two ways to define functions in a table:

local MyTable = {}

-- DOT NOTATION (normal function):
MyTable.something = function(self, name)
    print("Hello, " .. name .. "! I'm " .. self.name)
end

-- COLON NOTATION (method syntax - shorter!):
function MyTable:greet(name)
    print("Hello, " .. name .. "! I'm " .. self.name)
end

-- These are the SAME! The colon automatically adds "self" as the first parameter

-- ============================================
-- CALLING COLON FUNCTIONS
-- ============================================
-- When you call a colon function, you also use a colon:

MyTable.name = "MyTable"

-- Dot notation (you need to pass self manually):
MyTable.something(MyTable, "Alice")

-- Colon notation (self is passed automatically):
MyTable:greet("Alice")

-- Both print: Hello, Alice! I'm MyTable

-- ============================================
-- WHY USE COLON FUNCTIONS?
-- ============================================
-- Colon functions are cleaner when you're working with objects
-- They make it clear that the function "belongs" to the table

local Person = {}
Person.name = "Alice"

function Person:introduce()
    print("Hi, I'm " .. self.name)
end

Person:introduce()  -- Prints: Hi, I'm Alice

-- The colon automatically passes Person as "self"
-- So inside the function, self refers to the Person table

