scene_config = {
    begin_pos = {x = -2048.0, z = -2048.0},
    size = {x = 3072.0, z = 3072.0},
    born_pos = {x = 772.0, y = 858.0, z = 39.0},
    born_rot = {x = 0.0, y = 270.0, z = 0.0},
    die_y = -1000,
    vision_anchor = {x = -3000.0, z = -3000.0}
}

local tbl = {}
local n = 910102
local v = 910103
local n2 = 910104
local n3 = 910199
tbl[1] = 910101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
blocks = tbl

block_rects = {
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}},
    {min = {x = 0.0, z = -1024.0}, max = {x = 1024.0, z = 0.0}},
    {min = {x = -1024.0, z = 0.0}, max = {x = 0.0, z = 1024.0}},
    {min = {x = -1024.0, z = -1024.0}, max = {x = 0.0, z = 0.0}},
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}}
}

dummy_points = {"dummy_points"}
routes_config = {"routes"}
