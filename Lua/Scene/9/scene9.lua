scene_config = {
    begin_pos = {x = -2048.0, z = -2048.0},
    size = {x = 4096.0, z = 4096.0},
    born_pos = {x = 385.642, y = 120.756, z = -404.669},
    born_rot = {x = 0.0, y = 0.0, z = 0.0},
    die_y = -20,
    vision_anchor = {x = -3000.0, z = -3000.0}
}

local tbl = {}
local n = 9002
local v = 9003
local n2 = 9004
local n3 = 9005
local n4 = 9998
tbl[1] = 9001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
blocks = tbl

block_rects = {
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}},
    {min = {x = 0.0, z = -1024.0}, max = {x = 1024.0, z = 0.0}},
    {min = {x = -1024.0, z = 0.0}, max = {x = 0.0, z = 1024.0}},
    {min = {x = -1024.0, z = -1024.0}, max = {x = 0.0, z = 0.0}},
    {min = {x = 1024.0, z = -1024.0}, max = {x = 2048.0, z = 0.0}},
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}}
}

dummy_points = {"dummy_points"}
routes_config = {"routes"}
