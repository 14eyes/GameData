scene_config = {
    begin_pos = {x = -2048.0, z = -2048.0},
    size = {x = 4096.0, z = 4096.0},
    born_pos = {x = -437.742, y = 589.093, z = -714.14},
    born_rot = {x = 0.0, y = 70.0, z = 0.0},
    born_point_list = {{pos = {x = -427.0, y = 599.0, z = -729.0}, rot = {x = 0.0, y = 90.0, z = 0.0}}},
    die_y = 130,
    vision_anchor = {x = -3000.0, z = -3000.0}
}

local tbl = {}
local n = 910002
local v = 910003
local n2 = 910004
local n3 = 910005
local n4 = 910006
local n5 = 910007
local n6 = 910008
local n7 = 910009
local n8 = 910099
tbl[1] = 910001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
blocks = tbl

block_rects = {
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}},
    {min = {x = 0.0, z = -1024.0}, max = {x = 1024.0, z = 0.0}},
    {min = {x = -1024.0, z = -1024.0}, max = {x = 0.0, z = 0.0}},
    {min = {x = -1024.0, z = 0.0}, max = {x = 0.0, z = 1024.0}},
    {min = {x = -1024.0, z = 1024.0}, max = {x = 0.0, z = 2048.0}},
    {min = {x = 0.0, z = 1024.0}, max = {x = 1024.0, z = 2048.0}},
    {min = {x = 1024.0, z = 1024.0}, max = {x = 2048.0, z = 2048.0}},
    {min = {x = 1024.0, z = 0.0}, max = {x = 2048.0, z = 1024.0}},
    {min = {x = 1024.0, z = -1024.0}, max = {x = 2048.0, z = 0.0}},
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}}
}

dummy_points = {"dummy_points"}
routes_config = {"routes"}
