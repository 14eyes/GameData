scene_config = {
    begin_pos = {x = -1024.0, z = -1024.0},
    size = {x = 3072.0, z = 3072.0},
    born_pos = {x = 1023.536, y = 1086.578, z = 890.843},
    born_rot = {x = 0.0, y = 250.45, z = 0.0},
    die_y = -20,
    vision_anchor = {x = -2000.0, z = -2000.0}
}

local tbl = {}
local n = 6002
local v = 6003
local n2 = 6004
local n3 = 6005
local n4 = 6006
local n5 = 6007
local n6 = 6008
local n7 = 6009
local n8 = 6998
tbl[1] = 6001
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
    {min = {x = 1024.0, z = 0.0}, max = {x = 2048.0, z = 1024.0}},
    {min = {x = 1024.0, z = 1024.0}, max = {x = 2048.0, z = 2048.0}},
    {min = {x = 0.0, z = 1024.0}, max = {x = 1024.0, z = 2048.0}},
    {min = {x = 1024.0, z = -1024.0}, max = {x = 2048.0, z = 0.0}},
    {min = {x = 0.0, z = -1024.0}, max = {x = 1024.0, z = 0.0}},
    {min = {x = -1024.0, z = -1024.0}, max = {x = 0.0, z = 0.0}},
    {min = {x = -1024.0, z = 0.0}, max = {x = 0.0, z = 1024.0}},
    {min = {x = -1024.0, z = 1024.0}, max = {x = 0.0, z = 2048.0}},
    {min = {x = 0.0, z = 0.0}, max = {x = 1024.0, z = 1024.0}}
}

dummy_points = {"dummy_points"}
routes_config = {"routes"}
