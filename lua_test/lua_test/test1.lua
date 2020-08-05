-- if os.getenv("LOCAL_LUA_DEBUGGER_VSCODE") == "1" then
--     require("lldebugger").start()
--   end

-- local mymath =  {}
-- print('223')

-- local tb = {a=123}
-- function tb:new()
--     return tb
-- end
-- function tb:dofunc()
-- end

function Aaa()
    print('aaa')
end

function Linear(t, b, c, d)
    return c * t / d + b
end

function InQuad(t, b, c, d)
    t = t / d
    return c * t ^ 2 + b
end

-- no use
function Get_diff_4_Number()
    math.randomseed(os.time())
    local n1 = math.random(1, 9)
    local n2 = 0
    repeat
        n2 = math.random(1, 9)
    until (n2 ~= n1)
    local n3 = 0
    repeat
        n3 = math.random(1, 9)
    until (n3 ~= n1 and n3 ~= n2)
    local n4 = 0
    repeat
        n4 = math.random(1, 9)
    until (n4 ~= n1 and n4 ~= n2 and n4 ~= n3)
    return n1, n2, n3, n4
end


function Get_diff_4_Number_use_shuffle()
    local Shuffle_tbl = Shuffle_number({0, 1, 2, 3, 4, 5, 6, 7, 8, 9})
    return table.unpack(Shuffle_tbl, 1, 4)
end

function Shuffle_number(list_tbl)
    math.randomseed(os.time())
    for i = #list_tbl, 2, -1 do
        local j = math.random(i)
        list_tbl[i], list_tbl[j] = list_tbl[j], list_tbl[i]
    end
    return list_tbl
end

function Check_Game_End(rand_tbl, input_tbl)
    local right_num_right_pos = 0
    local right_num_wrong_pos = 0
    for i = 1, #rand_tbl do
        for j = 1, #input_tbl do
            if i == j and rand_tbl[i] == input_tbl[j] then
                right_num_right_pos = right_num_right_pos + 1
            elseif rand_tbl[i] == input_tbl[j] then
                right_num_wrong_pos = right_num_wrong_pos + 1
            end
        end
    end
    print(right_num_right_pos .. ' A ' .. right_num_wrong_pos .. ' B')

    if right_num_right_pos == 4 then
        return true
    end

    return false
end
