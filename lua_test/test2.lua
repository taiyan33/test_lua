dofile('./test1.lua')

local A = 123
Aaa()
local b = 456

print(Linear(1, 2, 3, 4))

print(InQuad(5, 6, 7, 8))

print(package.path)

local randNum1, randNum2, randNum3, randNum4 = Get_diff_4_Number()
local rand_tbl = {randNum1, randNum2, randNum3, randNum4}
for i = 1, #rand_tbl do
    io.write(' ' .. rand_tbl[i] .. '\t')
end
print()
repeat
    io.write('enter number 1~9:')
    for i = 1, #rand_tbl do
        io.write(' ' .. rand_tbl[i] .. ' ')
    end
    io.write(': ')
    local user_input = io.read()
    -- local user_input = 1234
    local user_input_str = tostring(user_input)

    local input_tbl = {}
    for i = 1, #user_input_str do
        input_tbl[#input_tbl + 1] = tonumber(string.sub(user_input_str, i, i))
    end

until Check_Game_End( rand_tbl ,input_tbl)
