local function foo(x)
  if x == nil then
    return nil  -- Correctly handles nil
  elseif type(x) ~= 'number' then
    error('Invalid argument: x must be a number')
  else
    return x * 2
  end
end

local result = foo('hello') -- Throws an error as expected
print(result)  

local result2 = foo(nil) -- returns nil as expected
print(result2)

local result3 = foo(10) -- returns 20 as expected
print(result3)