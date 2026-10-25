scene_config = {
    begin_pos = {x = -2048.0, z = -2048.0},
    size = {x = 4096.0, z = 4096.0},
    born_pos = {x = -338.492, y = 227.892, z = -665.085},
    born_rot = {x = 0.0, y = 55.174, z = 0.0},
    die_y = 0,
    vision_anchor = {x = -2048.0, z = -2048.0}
}

local tbl = {}
local n = 4002
local v = 4003
local n2 = 4004
local n3 = 4005
local n4 = 4998
tbl[1] = 4001
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
