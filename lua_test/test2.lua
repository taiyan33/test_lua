dofile('./test1.lua')

local A = 123
Aaa()
local b = 456

print(Linear(1, 2, 3, 4))

print(InQuad(5, 6, 7, 8))
-- require("json")
print(package.path)
-- local utf8 = require 'lua-utf8'
-- local a = '一二三四'
-- print( "中文" .. #a) -- 銝剜?12

-- local randNum1, randNum2, randNum3, randNum4 = Get_diff_4_Number()
-- local randNum1, randNum2, randNum3, randNum4 = Get_diff_4_Number_use_shuffle()
-- local rand_tbl = {randNum1, randNum2, randNum3, randNum4}
local rand_tbl = {Get_diff_4_Number_use_shuffle()}

print(table.concat(rand_tbl, '\t'))
-- print(table.unpack(rand_tbl, 1, 4))
-- for i = 1, #rand_tbl do
--     io.write(' ' .. rand_tbl[i] .. '\t')
-- end
repeat
    local input_tbl = user_input(rand_tbl)
until Check_Game_End_leave_loop(rand_tbl, input_tbl)
