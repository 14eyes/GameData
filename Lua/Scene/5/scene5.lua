scene_config = {
    begin_pos = {x = -3072.0, z = -3072.0},
    size = {x = 6144.0, z = 6144.0},
    born_pos = {x = -507.459, y = 299.35, z = 1375.713},
    born_rot = {x = 0.0, y = 0.0, z = 0.0},
    die_y = 105,
    vision_anchor = {x = -4000.0, z = -4000.0}
}

local tbl = {}
local n = 5002
local v = 5003
local n2 = 5004
local n3 = 5005
local n4 = 5006
local n5 = 5007
local n6 = 5008
local n7 = 5009
local n8 = 5998
tbl[1] = 5001
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
    {min = {x = 1024.0, z = 1024.0}, max = {x = 2048.0, z = 2048.0}},
    {min = {x = 1024.0, z = 0.0}, max = {x = 2048.0, z = 1024.0}},
    {min = {x = 1024.0, z = -1024.0}, max = {x = 2048.0, z = 0.0}},
    {min = {x = 0.0, z = 1024.0}, max = {x = 1024.0, z = 2048.0}},
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}},
    {min = {x = 0.0, z = -1024.0}, max = {x = 1024.0, z = 0.0}},
    {min = {x = -1024.0, z = 1024.0}, max = {x = 0.0, z = 2048.0}},
    {min = {x = -1024.0, z = 0.0}, max = {x = 0.0, z = 1024.0}},
    {min = {x = -1024.0, z = -1024.0}, max = {x = 0.0, z = 0.0}},
    {min = {x = 1024.0, z = 1024.0}, max = {x = 2048.0, z = 2048.0}}
}

dummy_points = {"dummy_points"}
routes_config = {"routes"}
