scene_config = {
    begin_pos = {x = -2048.0, z = -2048.0},
    size = {x = 4096.0, z = 4096.0},
    born_pos = {x = 756.434, y = 193.866, z = 1011.456},
    born_rot = {x = 0.0, y = 177.193, z = 0.0},
    die_y = -20,
    vision_anchor = {x = -3000.0, z = -3000.0}
}

local tbl = {}
local n = 2
local v = 3
local n2 = 4
local n3 = 5
local n4 = 6
local n5 = 7
local n6 = 8
local n7 = 9
local n8 = 99
tbl[1] = 1
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
    {min = {x = -1024.0, z = 0.0}, max = {x = 0.0, z = 1024.0}},
    {min = {x = -1024.0, z = -1024.0}, max = {x = 0.0, z = 0.0}},
    {min = {x = 0.0, z = 1024.0}, max = {x = 1024.0, z = 2048.0}},
    {min = {x = -1024.0, z = 1024.0}, max = {x = 0.0, z = 2048.0}},
    {min = {x = 1024.0, z = -1024.0}, max = {x = 2048.0, z = 0.0}},
    {min = {x = 1024.0, z = 0.0}, max = {x = 2048.0, z = 1024.0}},
    {min = {x = 1024.0, z = 1024.0}, max = {x = 2048.0, z = 2048.0}},
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}}
}

dummy_points = {"dummy_points"}
routes_config = {"routes"}
